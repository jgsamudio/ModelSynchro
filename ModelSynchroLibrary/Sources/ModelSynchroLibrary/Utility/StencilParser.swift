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
        guard let content = templateDict[Template.api.rawValue] else {
            // TODO: Generate error
            return
        }
        let context = [
            "modelImports": [
                FileImport(name: "sampleModelImport")
            ],
            "retrofitImports": [
                FileImport(name: "sampleRetrofitImport")
            ]
        ]
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
}
