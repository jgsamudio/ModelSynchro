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
    
    private var templateDict = [String: String]()
    
    private let stencilFileExtension = ".mustache"
    private let config: ConfigurationFile
    
    public init(config: ConfigurationFile) {
        self.config = config
        loadTemplates()
    }
    
    public func generateAPI() {
        let environment = Environment()
        // Add template name to language / config
        // Ability to add multiple templates per language.
        guard let content = templateDict[Template.api.rawValue],
            let outputDirectory = config.directoryInfo.outputApiDirectory else {
            // TODO: Generate error
            return
        }

        for api in config.serverAPIInfo?.apis ?? [] {
            let context = config.languageFormatter().apiTemplateContext(api: api, config: config)
            if let renderedTemplate = try? environment.renderTemplate(string: content, context: context) {
                let directory = "file://\(ConfigurationFile.projectDirectory)\(outputDirectory)\(api.name)"
                renderedTemplate.writeToFile(directory: directory)
            }
        }
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
}
