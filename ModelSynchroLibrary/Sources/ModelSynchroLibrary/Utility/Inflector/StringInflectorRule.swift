//
//  StringInflectorRule.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/5/19.
//

import Foundation

struct StringInflectionRule {
    
    let replacement: String
    let regex: NSRegularExpression?
    
    init(pattern: String, options: NSRegularExpression.Options, replacement: String) {
        self.regex = try? NSRegularExpression(pattern: pattern, options: options)
        self.replacement = replacement
    }
    
    func evaluate(string: inout String) -> Bool {
        let range = NSRange(location: 0, length: string.count)
        let mutableString = NSMutableString(string: string)
        let result = self.regex?.replaceMatches(in: mutableString,
                                                options: NSRegularExpression.MatchingOptions.reportProgress,
                                                range: range,
                                                withTemplate: self.replacement)
        string = String(mutableString)
        return result != 0
    }
}
