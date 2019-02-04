//
//  StencilParser.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 1/29/19.
//

import Foundation
import Stencil

typealias TemplateContext = [String: Codable]

open class StencilParser {
    
    // MARK: - Private Properties
    
    private var templateDict = [String: String]()
    
    private let stencilFileExtension = ".mustache"
    private let config: ConfigurationFile
    private let urlModelDict: UrlModelDict
    
    // MARK: - Initialization
    
    public init(config: ConfigurationFile, urlModelDict: UrlModelDict) {
        self.config = config
        self.urlModelDict = urlModelDict
        loadTemplates()
    }
    
    // MARK: - Public Functions
    
    public func generateAPI() {
        let environment = Environment()

        // TODO: Ability to add multiple templates per language.
        let templateName = config.languageFormatter().apiTemplateName
        guard let content = templateDict[templateName],
            let outputDirectory = config.directoryInfo.outputApiDirectory else {
                CommandError.templateNotFound.displayError(with: templateName)
            return
        }

        for api in config.serverAPIInfo?.apis ?? [] {
            let context = config.languageFormatter().apiTemplateContext(api: api,
                                                                        config: config,
                                                                        urlModelDict: urlModelDict)
            
            if let renderedTemplate = try? environment.renderTemplate(string: content, context: context) {
                let fileName = "\(api.name)\(config.languageFormatter().fileExtension)"
                let directory = "file://\(ConfigurationFile.projectDirectory)\(outputDirectory)\(fileName)"
                renderedTemplate.writeToFile(directory: directory)
            }
        }
    }
}

// MARK: - Private Functions
private extension StencilParser {
    
    func loadTemplates() {
        guard let templateDirectory = config.directoryInfo.templateDirectory else {
            CommandError.templateDirectory.displayError()
            return
        }
        let inputPath = "\(ConfigurationFile.projectDirectory)\(templateDirectory)"
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
}
