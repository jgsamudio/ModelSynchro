//
//  ConfigurationParser.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation
import ModelSynchroLibrary

final class ConfigurationParser {
    
    var configFile: ConfigurationFile?
        
    private let configurationFileName = "configuration.json"
    
    init() {
        guard let projectDirectory = retreiveProjectDirectory() else {
            print("Error: Project Directory Not Found")
            return
        }
        let formattedProjectDirectory = format(projectDirectory: projectDirectory)
        parseConfigurationFile(projectDirectory: formattedProjectDirectory)
        ConfigurationFile.projectDirectory = formattedProjectDirectory
    }
}

private extension ConfigurationParser {
    
    func retreiveProjectDirectory() -> String? {
        let userDefaults = UserDefaults.standard.dictionaryRepresentation()
        if let commandLineProjectDirectory = userDefaults["projectDirectory"] as? String {
            return commandLineProjectDirectory
        } else if let xcodeProjectDirectory = ConfigurationParser.getEnvironmentVar("PROJECT_DIR") {
            return xcodeProjectDirectory
        }
        return nil
    }
  
    private static func getEnvironmentVar(_ name: String) -> String? {
        guard let rawValue = getenv(name) else {
            return nil
        }
        return String(utf8String: rawValue)
    }
    
    private func parseConfigurationFile(projectDirectory: String) {
        let fileToParse = projectDirectory + configurationFileName
        
        do {
            let content = try String(contentsOfFile: fileToParse, encoding: String.Encoding.utf8)
            let fileLines = content.components(separatedBy: "\n")
            setupConfigurationFile(fileLines: fileLines)
        } catch {
            print("Error caught with message: \(error.localizedDescription)")
        }
    }
    
    private func setupConfigurationFile(fileLines: [String]) {
        let configString = fileLines.joined()
        let configData = configString.data(using: .utf8)
        configData?.deserializeObject(completion: { (config, _) in
            self.configFile = config
        })
    }
    
    private func format(projectDirectory: String) -> String {
        if projectDirectory.prefix(2) == "./" {
            let currentDirectory = FileManager.default.currentDirectoryPath
            let startIndex = projectDirectory.index(projectDirectory.startIndex, offsetBy: 2)
            return "\(currentDirectory)/\(String(projectDirectory[startIndex..<projectDirectory.endIndex]))"
        }
        return projectDirectory
    }
}
