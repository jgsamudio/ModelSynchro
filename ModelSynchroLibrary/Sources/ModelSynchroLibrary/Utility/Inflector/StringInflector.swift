//
//  StringInflector.swift
//  ModelSynchroLibrary
//
//  Created by Jonathan Samudio on 2/5/19.
//

import Foundation

final class StringInflector {

    static let sharedInstance = StringInflector.defaultInflector()
    
    var singularRules: [StringInflectionRule] = []
    var pluralRules: [StringInflectionRule] = []
    var uncountable = Set<String>()
    var irregular: [String: String] = [:]
    
    //MARK: - Public Functions
    
    func singularize(string: String) -> String {
        return _lize(string: string, rules: self.singularRules)
    }
    
    func pluralize(string: String) -> String {
        return _lize(string: string, rules: self.pluralRules)
    }
}

private extension StringInflector {
    
    static func defaultInflector() -> StringInflector {
        let inflector = StringInflector()
        inflector.predefinedEnUSLocale()
        return inflector
    }
    
    func _lize(string: String, rules: [StringInflectionRule]) -> String {
        if self.uncountable.contains(string) {
            return String(string)
        }
        let irregular = self.irregular.keys.filter({ $0 == string })
        if !irregular.isEmpty {
            return String(irregular.first!)
        }
        var result = String(string)
        for rule in rules {
            if rule.evaluate(string: &result) {
                return result
            }
        }
        return result
    }
    
    //MARK: - Rules
    
    func add(form: StringInflectionForm, pattern: String, replacement: String) {
        self.uncountable.remove(pattern)
        let rule = StringInflectionRule(pattern: pattern,
                                        options: [.anchorsMatchLines, .caseInsensitive, .useUnicodeWordBoundaries],
                                        replacement: replacement)
        
        if form == .Singular {
            self.singularRules.append(rule)
        } else {
            self.uncountable.remove(replacement)
            self.pluralRules.append(rule)
        }
    }
    func add(irregular singular: String, plural: String) {
        self.irregular[singular] = plural
        self.irregular[singular.capitalized] = plural.capitalized
    }
    
    func add(uncountable word: String) {
        self.uncountable.insert(word)
    }
    
    // MARK: Utils
    
    func predefinedEnUSLocale() {
        add(form: .Plural, pattern: "$", replacement: "s")
        add(form: .Plural, pattern: "s$", replacement: "s")
        add(form: .Plural, pattern: "^(ax|test)is$", replacement: "$1es")
        add(form: .Plural, pattern: "(octop|vir)us$", replacement: "$1i")
        add(form: .Plural, pattern: "(octop|vir)i$", replacement: "$1i")
        add(form: .Plural, pattern: "(alias|status)$", replacement: "$1es")
        add(form: .Plural, pattern: "(bu)s$", replacement: "$1ses")
        add(form: .Plural, pattern: "(buffal|tomat)o$", replacement: "$1oes")
        add(form: .Plural, pattern: "([ti])um$", replacement: "$1a")
        add(form: .Plural, pattern: "([ti])a$", replacement: "$1a")
        add(form: .Plural, pattern: "sis$", replacement: "ses")
        add(form: .Plural, pattern: "(?:([^f])fe|([lr])f)$", replacement: "$1$2ves")
        add(form: .Plural, pattern: "(hive)$", replacement: "$1s")
        add(form: .Plural, pattern: "([^aeiouy]|qu)y$", replacement: "$1ies")
        add(form: .Plural, pattern: "(x|ch|ss|sh)$", replacement: "$1es")
        add(form: .Plural, pattern: "(matr|vert|ind)(?:ix|ex)$", replacement: "$1ices")
        add(form: .Plural, pattern: "^(m|l)ouse$", replacement: "$1ice")
        add(form: .Plural, pattern: "^(m|l)ice$", replacement: "$1ice")
        add(form: .Plural, pattern: "^(ox)$", replacement: "$1en")
        add(form: .Plural, pattern: "^(oxen)$", replacement: "$1")
        add(form: .Plural, pattern: "(quiz)$", replacement: "$1zes")
        
        add(form: .Singular, pattern: "(address)es$", replacement: "$1")
        add(form: .Singular, pattern: "s$", replacement: "")
        add(form: .Singular, pattern: "(ss)$", replacement: "$1")
        add(form: .Singular, pattern: "(n)ews$", replacement: "$1ews")
        add(form: .Singular, pattern: "([ti])a$", replacement: "$1um")
        add(form: .Singular, pattern: "([^f])ves$", replacement: "$1fe")
        add(form: .Singular, pattern: "(hive)s$", replacement: "$1")
        add(form: .Singular, pattern: "(tive)s$", replacement: "$1")
        add(form: .Singular, pattern: "([lr])ves$", replacement: "$1f")
        add(form: .Singular, pattern: "([^aeiouy]|qu)ies$", replacement: "$1y")
        add(form: .Singular, pattern: "(s)eries$", replacement: "$1eries")
        add(form: .Singular, pattern: "(m)ovies$", replacement: "$1ovie")
        add(form: .Singular, pattern: "(x|ch|ss|sh)es$", replacement: "$1")
        add(form: .Singular, pattern: "^(m|l)ice$", replacement: "$1ouse")
        add(form: .Singular, pattern: "(bus)(es)?$", replacement: "$1")
        add(form: .Singular, pattern: "(o)es$", replacement: "$1")
        add(form: .Singular, pattern: "(shoe)s$", replacement: "$1")
        add(form: .Singular, pattern: "(cris|test)(is|es)$", replacement: "$1is")
        add(form: .Singular, pattern: "^(a)x[ie]s$", replacement: "$1xis")
        add(form: .Singular, pattern: "(octop|vir)(us|i)$", replacement: "$1us")
        add(form: .Singular, pattern: "(alias|status)(es)?$", replacement: "$1")
        add(form: .Singular, pattern: "^(ox)en", replacement: "$1")
        add(form: .Singular, pattern: "(vert|ind)ices$", replacement: "$1ex")
        add(form: .Singular, pattern: "(matr)ices$", replacement: "$1ix")
        add(form: .Singular, pattern: "(quiz)zes$", replacement: "$1")
        add(form: .Singular, pattern: "(database)s$", replacement: "$1")
        
        add(uncountable:"equipment")
        add(uncountable:"information")
        add(uncountable:"rice")
        add(uncountable:"money")
        add(uncountable:"species")
        add(uncountable:"series")
        add(uncountable:"fish")
        add(uncountable:"sheep")
        add(uncountable:"jeans")
    }
}
