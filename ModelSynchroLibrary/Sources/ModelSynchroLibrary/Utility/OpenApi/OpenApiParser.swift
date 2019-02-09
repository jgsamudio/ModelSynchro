//
//  OpenApiParser.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/9/19.
//

import Foundation

typealias RequestParameters = (bodyInfo: RequestInfo?, queryInfo: RequestInfo?, pathInfo: RequestInfo?)

final class OpenApiParser {
    
    private var openApi: Openapi
    
    private var schemaKey = "schema"
    
    init(openApi: Openapi) {
        self.openApi = openApi
    }
    
    /// Converts the open api model to a server api info model to generate the api and models.
    ///
    /// - Parameter config: User's configuration file.
    /// - Returns: Server api info.
    func convertToServerApi(config: ConfigurationFile) -> ServerAPIInfo {
        let baseUrl = openApi.servers.first?.url
        var apisDict = [String: [Endpoint]]()
        
        // TODO: API Naming conventions, currently account not AccountApi
        
        if let pathsJson = openApi.paths {
            for (endpointUrl, endpointJson) in pathsJson {
                guard let endpointJson = endpointJson as? JSON else {
                    continue
                }
                
                for (endpointInfoKey, endpointInfoValue) in endpointJson {
                    guard  let endpointInfoValue = endpointInfoValue as? JSON,
                        let httpMethod = HTTPMethod.init(rawValue: endpointInfoKey) else {
                            continue
                    }
                    
                    let apiTags = endpointInfoValue["tags"] as? [String]
                    let apiFunctionName = endpointInfoValue["operationId"] as? String
                    
                    let parameters = endpointInfoValue["parameters"] as? [JSON]
                    let requestBodyJson = endpointInfoValue["requestBody"] as? JSON
                    let responsesJson = endpointInfoValue["responses"] as? JSON
                    let successResponse = responsesJson?["200"] as? JSON
                    
                    let exampleModelInfo = modelSchemaInfo()
                    let requestParameters = requestInfo(requestBodyJson: requestBodyJson,
                                                        exampleModelInfo: exampleModelInfo,
                                                        parameters: parameters)
                    
                    guard let apiName = apiTags?.first else {
                        continue
                    }
                    
                    let schemaName = extractSchema(from: successResponse)
                    let responseModelName = exampleModelInfo[schemaName ?? ""] == nil ? nil : schemaName
                    let endpoint = Endpoint(functionName: apiFunctionName,
                                            responseModelName: responseModelName,
                                            url: nil,
                                            endpoint: endpointUrl,
                                            authorized: false,
                                            method: httpMethod,
                                            pathInfo: requestParameters.pathInfo,
                                            queryInfo: requestParameters.queryInfo,
                                            bodyInfo: requestParameters.bodyInfo)
                    
                    if apisDict[apiName] == nil {
                        apisDict[apiName] = [Endpoint]()
                    }
                    apisDict[apiName]?.append(endpoint)
                }
            }
        }
        let apis = apisDict.map { Api(name: formattedApiName($0.key), endpoints: $0.value) }
        return ServerAPIInfo(apis: apis, headers: nil, authEndpoint: nil, baseUrl: baseUrl)
    }
}

private extension OpenApiParser {
    
    var defaultServerAPIInfo: ServerAPIInfo {
        return ServerAPIInfo(apis: nil, headers: nil, authEndpoint: nil, baseUrl: nil)
    }
    
    func formattedApiName(_ name: String) -> String {
        return "\(name.capitalized)Api"
    }
    
    func extractSchema(from contentJson: JSON?) -> String? {
        let content = contentJson?["content"] as? JSON
        let applicationJson = content?["application/json"] as? JSON
        let schema = applicationJson?[schemaKey] as? JSON
        let items = schema?["items"] as? JSON
        let pathSchema = items?["$ref"] as? String ?? schema?["$ref"] as? String
        
        if let schema = pathSchema?.split(separator: "/").last {
            return String(schema)
        }
        return nil
    }
    
    func extractExampleValue(from propertyJson: JSON?) -> Any? {
        if let exampleValue = propertyJson?["example"] {
            return exampleValue
        } else if let typeValue = propertyJson?["type"] as? String, let type = OpenApiType.init(rawValue: typeValue) {
            return type.defaultExampleValue
        }
        return nil
    }
    
    func modelSchemaInfo() -> [String: JSON] {
        var modelSchemaInfo = [String: JSON]()
        if let schemaJson = openApi.components.schemas {
            for (modelName, modelValue) in schemaJson {
                if let modelValue = modelValue as? JSON,
                    let propertyJSON = modelValue["properties"] as? JSON {
                    
                    for (propertyName, propertyValue) in propertyJSON {
                        if let propertyValue = propertyValue as? JSON,
                            let exampleValue = extractExampleValue(from: propertyValue) {
                            
                            if modelSchemaInfo[modelName] == nil {
                                modelSchemaInfo[modelName] = JSON()
                            }
                            
                            if var modelExampleJson = modelSchemaInfo[modelName] {
                                modelExampleJson[propertyName] = exampleValue
                                modelSchemaInfo[modelName] = modelExampleJson
                            }
                        }
                    }
                }
            }
        }
        return modelSchemaInfo
    }
    
    func requestInfo(requestBodyJson: JSON?,
                     exampleModelInfo: [String: JSON],
                     parameters: [JSON]?) -> RequestParameters {
        
        var pathInfo: RequestInfo? = nil
        var queryInfo: RequestInfo? = nil
        var bodyInfo: RequestInfo? = nil
        
        if let requestModelName = extractSchema(from: requestBodyJson) {
            bodyInfo = RequestInfo(modelName: requestModelName,
                                   data: exampleModelInfo[requestModelName])
        }
        
        if let parameters = parameters {
            for parameter in parameters {
                if let name = parameter["name"] as? String {
                    if let location = parameter["in"] as? String, location == "path" {
                        if pathInfo == nil {
                            pathInfo = RequestInfo(modelName: nil, data: JSON())
                        }
                        if let schemaJson = parameter[schemaKey] as? JSON {
                            pathInfo?.data?[name] = extractExampleValue(from: schemaJson)
                        }
                    } else if let location = parameter["in"] as? String, location == "query" {
                        if queryInfo == nil {
                            queryInfo = RequestInfo(modelName: nil, data: JSON())
                        }
                        if let schemaJson = parameter[schemaKey] as? JSON {
                            queryInfo?.data?[name] = extractExampleValue(from: schemaJson)
                        }
                    }
                }
            }
        }
        return (bodyInfo, queryInfo, pathInfo)
    }
}
