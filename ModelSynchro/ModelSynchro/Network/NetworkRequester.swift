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
        guard let endpoints = config.serverAPIInfo?.endpoints else {
            return
        }

        endpoints.forEach {
            guard let request = urlRequest(endpoint: $0) else {
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
    
    func urlRequest(endpoint: Endpoint) -> URLRequest?  {

        
        var urlComponents = URLComponents(string: endpoint.url)
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
            request.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: .sortedKeys)
        }

        return request
    }
}
