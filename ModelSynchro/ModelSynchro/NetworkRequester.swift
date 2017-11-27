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
    private var models = [ModelGenerator]()
    
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
                
                self.models.forEach {
                    $0.writeToFile()
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
            
            sema.signal()
        }
        
        // Network call
        task.resume()
        sema.wait()
        exit(0)
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
        let model = ModelGenerator(name: modelName.capitalizedFirstLetter(), config: config)
        models.append(model)
        
        for (key, value) in json {
            guard let type = parse(key: key, value: value) else {
                continue
            }
            model.add(property: key, type: type.toString())
        }
    }
    
    func parse(key: String, value: Any) -> Type? {
        if let array = value as? Array<Any> {
            array.forEach {
                if let json = $0 as? JSON {
                    parse(json: json, modelName: key)
                }
            }
            return .array(key.capitalizedFirstLetter())
        } else if let _ = value as? Int {
            return .int
        } else if let _ = value as? String {
            return .string
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
        }
    }
}

final class ModelGenerator {
    
    var name: String
    var contents = [String]()
    var config: ConfigurationFile
    
    init(name: String, config: ConfigurationFile) {
        self.name = name
        self.config = config
        contents.append("struct " + name + ": Codable {")
    }
    
    func add(property: String, type: String) {
        contents.append("\tlet " + property + ": " + type)
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


