//
//  NetworkRequester.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

/// JSON network type alias.
typealias JSON = [String : Any]

/// Loads network requests.
final class NetworkRequester {
    
    private let config: ConfigurationFile
    private let jsonParser: JsonParser
    
    init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        jsonParser = JsonParser(config: config, currentModels: currentModels)
    }
    
    /// Generates the models specified from the config file.
    func generateModels() {
        config.endpoints.forEach {
            guard let request = urlRequest(urlString: $0.url) else {
                return
            }
            requestJSONData(request: request, name: $0.name)
        }
        jsonParser.writeModelsToFile()
    }
    
    func requestJSONData(request: URLRequest, name: String) {
        let sema = DispatchSemaphore(value: 0)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                return
            }
            self.jsonParser.parse(data: data, name: name)
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
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        // TODO: add parameters

        config.headers?.forEach({ (key, value) in
            request.setValue(key, forHTTPHeaderField: value)
        })
        
        return request
    }
}
