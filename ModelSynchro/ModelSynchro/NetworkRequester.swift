//
//  NetworkRequester.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

typealias JSON = [String : Any]

final class NetworkRequester {
    
    private let config: ConfigurationFile
    private var modelDict = [String : ModelGenerator]()
    
    init(config: ConfigurationFile) {
        self.config = config
    }
    
    func generateModels() {
        config.endpoints.forEach {
            guard let request = urlRequest(urlString: $0) else {
                return
            }
            requestJSONData(request: request)
        }
        
        modelDict.forEach({ (key, value) in
            value.writeToFile()
        })
    }
    
    func requestJSONData(request: URLRequest) {
        // Thread lock
        let sema = DispatchSemaphore(value: 0)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            do {
                guard let data = data, let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? JSON else {
                    return
                }
                self.parse(json: json, modelName: "sample")
            } catch let error as NSError {
                print(error.localizedDescription)
            }
            
            sema.signal()
        }
        
        task.resume()
        sema.wait()
    }
    
    func urlRequest(urlString: String) -> URLRequest?  {
        guard let url = URL(string: urlString) else {
            print("Error: Not a url")
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        request.setValue("application/json;", forHTTPHeaderField: "Content-Type")
//        request.setValue("Bearer \(authToken)", forHTTPHeaderField: "Authorization")
        return request
    }
    
    func parse(json: JSON, modelName: String) {
        let model = modelGenerator(modelName: modelName)
        
        for (key, value) in json {
            guard let type = parse(key: key, value: value) else {
                print(key)
                continue
            }
            model.add(property: key, type: type.toString())
        }
    }
    
    func modelGenerator(modelName: String) -> ModelGenerator {
        if let model = modelDict[modelName] {
            return model
        } else {
            let model = ModelGenerator(name: modelName.capitalizedFirstLetter(), config: config)
            modelDict[modelName] = model
            return model
        }
    }
    
    func parse(key: String, value: Any) -> Type? {
        if let array = value as? Array<Any> {
            array.forEach {
                if let json = $0 as? JSON {
                    parse(json: json, modelName: key)
                }
            }
            
            if array.isEmpty {
                parse(json: [:], modelName: key)
            }
            
            return .array(key.capitalizedFirstLetter())
        } else if let _ = value as? Int {
            return .int
        } else if let _ = value as? String {
            return .string
        } else if let _ = value as? Bool {
            return .bool
        } else if let _ = value as? Double {
            return .double
        } else if let json = value as? JSON {
            guard let firstJSON = json.first,
                let keyType = parse(key: "Key", value: firstJSON.key)?.toString(),
                let valueType = parse(key: "Value", value: firstJSON.value)?.toString() else {
                return nil
            }
            
            return .dictionary(keyType, valueType)
        }
        
        return nil
    }
}

enum Type {
    case int
    case string
    case bool
    case double
    case array(String)
    case dictionary(String, String)
    
    func toString() -> String {
        switch self {
        case .int:
            return "Int"
        case .string:
            return "String"
        case .bool:
            return "Bool"
        case .double:
            return "Double"
        case .array(let type):
            return "[" + type + "]"
        case .dictionary(let keyType, let valueType):
            return "[" + keyType + " : " + valueType + "]"
        }
    }
}

final class ModelGenerator {
    
    var name: String
    var contents = [String]()
    var config: ConfigurationFile
    
    var fileHeader: String {
        return """
        //
        //  \(name).swift
        //  \(config.projectName)
        //
        //  Created by \(config.authorName) on 11/27/17.
        //  Copyright © 2017 \(config.companyName). All rights reserved.
        //
        
        """
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
    
    func writeToFile() {
        // Add end of file
        contents.append("}")
        let fileText = contents.joined(separator: "\n")
        
        // FIX THIS remove ?? for output directory
        guard let fileURL = URL(string: "file://" + ConfigurationParser.projectDirectory + (config.outputDirectory ?? "") + name + ".swift") else {
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

extension String {
    
    func capitalizedFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
}


