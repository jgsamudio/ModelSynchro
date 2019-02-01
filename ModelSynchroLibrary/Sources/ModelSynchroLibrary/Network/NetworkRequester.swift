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
open class NetworkRequester {
    
    private let config: ConfigurationFile
    private let jsonParser: JsonParser
    
    public init(config: ConfigurationFile, currentModels: ModelComponents) {
        self.config = config
        jsonParser = JsonParser(config: config, currentModels: currentModels)
    }
    
    /// Generates the models specified from the config file.
    public func generateModels() {
        guard let endpoints = config.serverAPIInfo?.endpoints() else {
            return
        }

        endpoints.forEach {
            guard let request = urlRequest(endpoint: $0) else {
                return
            }
            requestJSONData(request: request, endpoint: $0)
        }
        jsonParser.writeModelsToFile()
    }
    
    public func requestJSONData(request: URLRequest, endpoint: Endpoint) {
        let sema = DispatchSemaphore(value: 0)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                return
            }
            self.jsonParser.parse(data: data, name: endpoint.responseModelName, response: response)
            
            if let parameters = endpoint.parameters {
                self.jsonParser.parse(json: parameters.body, modelName: parameters.modelName)
            }
            
            sema.signal()
        }
        
        task.resume()
        sema.wait()
    }
    
    public func urlRequest(endpoint: Endpoint) -> URLRequest?  {
        var urlComponents = endpoint.urlRequest(baseUrl: config.serverAPIInfo?.baseUrl)
        for (key, value) in endpoint.queries ?? [:] {
            urlComponents?.queryItems?.append(URLQueryItem(name: key, value: value))
        }
        
        guard let url = urlComponents?.url else {
            CommandError.validUrl.displayError()
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue.uppercased()
        request.allHTTPHeaderFields = config.serverAPIInfo?.headers
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let parameters = endpoint.parameters {
            if #available(OSX 10.13, *) {
                request.httpBody = try? JSONSerialization.data(withJSONObject: parameters.body, options: .sortedKeys)
            } else {
                // TODO Fallback on earlier versions
            }
        }

        return request
    }
}
