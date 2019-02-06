//
//  ConfigurationFile.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// Configuration model for the config file.
public struct ConfigurationFile: Codable {

    // MARK: - Public Properties
    
    /// Name of the author / developer.
    let authorName: String

    /// Company name.
    let companyName: String

    /// Project name.
    let projectName: String

    /// Language of the program.
    let language: Language?
    
    /// Flag to output more detailed information.
    let verbose: Bool?
    
    /// Naming conventions
    let namingConventions: [NamingConvention]?
    
    /// Directory information for code generation.
    let directoryInfo: DirectoryInfo

    /// Network endpoints and information to generate network models.
    var serverAPIInfo: ServerAPIInfo?
    
    /// Mapped model names.
    let mappedModelNames: [MappedModelInfo]?
}

extension ConfigurationFile {
    
    public static var projectDirectory = ""
    
    public var containsLocalDirectory: Bool {
        return directoryInfo.localJSONDirectory != nil
    }
    
    public var containsOutputApiDirectory: Bool {
        return directoryInfo.outputApiDirectory != nil
    }
    
    /// Model output path.
    var outputModelPath: String {
        return ConfigurationFile.projectDirectory + (directoryInfo.outputModelDirectory ?? "")
    }
    
    public mutating func updateConfiguration(with json: JSON) {
        if let apiJson = json["serverAPIInfo"] as? JSON {
            serverAPIInfo?.updateConfiguration(with: apiJson)
        }
    }
    
    public mutating func updateServerApi(with openApiData: Data?) {
        openApiData?.deserializeObject { (api: Openapi?, _) in
            if let openApiJson = openApiData?.serializeToJsonObject(), var openApi = api {
                openApi.updateModel(with: openApiJson)
                serverAPIInfo = OpenApiParser(openApi: openApi).convertToServerApi()
            }
        }
    }

    /// The local directory path.
    ///
    /// - Parameter directory: Directory of the local json.
    /// - Returns: Full directory path.
    func localPath(directory: String) -> String {
        return ConfigurationFile.projectDirectory + directory
    }
    
    /// Current language formatter for the output.
    ///
    /// - Returns: Language formatter interface.
    func languageFormatter() -> LanguageFormatter {
        guard let language = language else {
            CommandError.language.displayError()
            fatalError()
        }
        
        switch language {
        case .swift:
            return SwiftLanguageFormatter()
        case .objectiveC:
            return ObjectiveCLanguageFormatter()
        case .kotlin:
            return KotlinLanguageFormatter()
        }
    }

    /// Maps the filename to the correct name.
    ///
    /// - Parameter filename: Filename to search for.
    /// - Returns: Mapped model name if found.
    func mapped(filename: String) -> String {
        for modelInfo in mappedModelNames ?? [] {
            if modelInfo.fileName == filename {
                return modelInfo.mappedName
            } else if modelInfo.jsonKey == filename {
                return modelInfo.mappedName
            }
        }
        return applyNamingConventions(for: filename)
    }
    
    /// Applies the naming conventions to the given string.
    ///
    /// - Parameter string: String to apply the naming conventions to.
    /// - Returns: Formatted string.
    func applyNamingConventions(for string: String) -> String {
        return namingConventions?.reduce(string, { (string, namingConvention) -> String in
            namingConvention.apply(to: string)
        }) ?? string
    }
}

final class OpenApiParser {
    
    private var openApi: Openapi
    
    init(openApi: Openapi) {
        self.openApi = openApi
    }
    
    func convertToServerApi() -> ServerAPIInfo {
        let baseUrl = openApi.servers.first?.url
        var apisDict = [String: [Endpoint]]()

        if let pathsJson = openApi.paths {
            for (endpointUrl, endpointJson) in pathsJson {
                guard let endpointJson = endpointJson as? JSON else {
                    continue
                }
                
                // Path Endpoints
                for (endpointInfoKey, endpointInfoValue) in endpointJson {
                    guard  let endpointInfoValue = endpointInfoValue as? JSON else {
                        continue
                    }
                    
                    // Endpoints
                    if let httpMethod = HTTPMethod.init(rawValue: endpointInfoKey) {
                        let apiTags = endpointInfoValue["tags"] as? [String]
                        let apiFunctionName = endpointInfoValue["operationId"] as? String
                        
                        // TODO: Path, Query, Body Parsing.
                
                        if endpointInfoKey == "responses" {
                            let successResponse = endpointInfoValue["200"] as? JSON
                            let content = successResponse?["content"] as? JSON
                            let applicationJson = content?["application/json"] as? JSON
                            let schema = applicationJson?["schema"] as? JSON
                            let pathSchema = schema?["$ref"] as? String
                            
                            // Convert Schema to responseModelName
                            guard let responseModelName = pathSchema?.split(separator: "/").last,
                                let apiName = apiTags?.first else {
                                continue
                            }
                            
                            let endpoint = Endpoint(functionName: apiFunctionName,
                                                    responseModelName: String(responseModelName),
                                                    url: nil,
                                                    endpoint: endpointUrl,
                                                    authorized: false,
                                                    method: httpMethod,
                                                    pathInfo: nil,
                                                    queryInfo: nil,
                                                    bodyInfo: nil)
                            
                            if apisDict[apiName] == nil {
                                apisDict[apiName] = [Endpoint]()
                            }
                            apisDict[apiName]?.append(endpoint)
                        }
                    }
                }
            }
        }
        
        let apis = apisDict.map { Api(name: $0.key, endpoints: $0.value) }
        return ServerAPIInfo(apis: apis, headers: nil, authEndpoint: nil, baseUrl: baseUrl)
    }
}

private extension OpenApiParser {
    
    var defaultServerAPIInfo: ServerAPIInfo {
        return ServerAPIInfo(apis: nil, headers: nil, authEndpoint: nil, baseUrl: nil)
    }
}
