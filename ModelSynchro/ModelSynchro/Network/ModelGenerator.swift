//
//  ModelGenerator.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class ModelGenerator {
    
    var name: String
    var contents = [String]()
    var config: ConfigurationFile
    
    private var fileHeader: String {
        return """
        //
        //  \(name).swift
        //  \(config.projectName)
        //
        //  Created by \(config.authorName) on \(currentDateString).
        //  Copyright © \(yearString) \(config.companyName). All rights reserved.
        //
        
        /*
            Auto-Generated using ModelSynchro
        */
        
        """
    }
    
    private var fileURLString: String {
        return "file://" + ConfigurationParser.projectDirectory + (config.outputDirectory ?? "") + name + ".swift"
    }
    
    private var currentDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yy"
        let formattedDate = formatter.string(from: Date())
        return formattedDate
    }
    
    private var yearString: String {
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year, from: date))
    }
    
    init(name: String, config: ConfigurationFile) {
        self.name = name
        self.config = config
        contents.append(fileHeader)
        contents.append("struct " + name + ": Codable {")
    }
    
    func add(property: String, type: String) {
        let variableDefinition = variableString(property: property, type: type)
        if !variableFound(variableDefinition: variableDefinition) {
            contents.append(variableDefinition)
        }
    }
    
    func writeToFile() {
        contents.append("}")
        let fileText = contents.joined(separator: "\n")
        
        guard let fileURL = URL(string: fileURLString) else {
            print("Error: Not a valid url")
            return
        }
        
        do {
            try fileText.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        catch let error {
            print("Error: " + error.localizedDescription)
        }
    }
}

private extension ModelGenerator {
    
    func variableString(property: String, type: String) -> String {
        return "\tlet " + property + ": " + type
    }
    
    func variableFound(variableDefinition: String) -> Bool {
        for line in contents {
            if line == variableDefinition {
                return true
            }
        }
        return false
    }
}


