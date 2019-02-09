//
//  APIGeneratorLanguageFormatter.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/9/19.
//

import Foundation

protocol APIGeneratorLanguageFormatter {
        
    var apiTemplateName: String { get }
    
    func apiTemplateContext(api: Api, config: ConfigurationFile, urlModelDict: UrlModelDict) -> TemplateContext
    
}

extension APIGeneratorLanguageFormatter {
    
    var apiTemplateName: String {
        return ""
    }
    
    func apiTemplateContext(api: Api, config: ConfigurationFile, urlModelDict: UrlModelDict) -> TemplateContext {
        return [:]
    }
}
