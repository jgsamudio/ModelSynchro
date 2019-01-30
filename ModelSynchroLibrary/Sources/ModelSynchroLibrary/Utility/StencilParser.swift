//
//  StencilParser.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 1/29/19.
//

import Foundation
import Stencil

open class StencilParser {
    
    private var templateDict = [String: String]()
    
    private let stencilFileExtension = ".stencil"
    private let config: ConfigurationFile
    
    public init(config: ConfigurationFile) {
        self.config = config
        loadTemplates()
    }
    
    public func generateAPI() {
        let environment = Environment()
        // Add template name to language / config
        // Ability to add multiple templates per language.
        guard let content = templateDict[Template.api.rawValue] else {
            // TODO: Generate error
            return
        }
        let context: [String: Codable] = [
            "modelImports": [
                FileImport(name: "sampleModelImport")
            ],
            "retrofitImports": [
                FileImport(name: "sampleRetrofitImport")
            ],
            "api": apiTemplateModels()
        ]
        print(context)
        print("Rendering")
        let rendered = try? environment.renderTemplate(string: content, context: context)
        print(rendered ?? "nil")
    }
}

private extension StencilParser {
    
    func loadTemplates() {
        let inputPath = "\(ConfigurationFile.projectDirectory)/templates/"
        let fileNames = FileRetriever.retrieveFilenames(at: inputPath, fileExtension: stencilFileExtension)
        
        for file in fileNames {
            let fileToParse = inputPath + file
            do {
                let content = try String(contentsOfFile: fileToParse, encoding: String.Encoding.utf8)
                let fileName = file.removeTrailing(startWith: stencilFileExtension)
                templateDict[fileName] = content
            } catch {
                CommandError.fetchTemplates.displayError(with: error.localizedDescription)
            }
        }
    }
    
    // TODO: Have this be returned from the language formatter?
    func apiTemplateModels() -> APITemplate? {
        guard let api = config.serverAPIInfo?.apis?.first else {
            return nil
        }
        
        var requestTemplates = [APIRequestTemplate]()
        for endpoint in api.endpoints ?? [] {
            let methodAnnotation = config.languageFormatter().httpMethodAnnotation(method: endpoint.method)
            let requestName = "\(endpoint.method.rawValue.lowercased())\(endpoint.responseModelName)"
            let requestTemplate = APIRequestTemplate(name: requestName,
                                                     httpMethodAnnotation: methodAnnotation,
                                                     endpoint: endpoint.endpoint ?? "",
                                                     parameters: nil,
                                                     returnType: endpoint.responseModelName)
            requestTemplates.append(requestTemplate)
        }
        
        return APITemplate(name: api.name, apiRequests: requestTemplates)
    }
}

struct APITemplate: Codable {
    let name: String
    let apiRequests: [APIRequestTemplate]
}

struct APIRequestTemplate: Codable {
    let name: String
    let httpMethodAnnotation: String
    let endpoint: String
    let parameters: String?
    let returnType: String
}
