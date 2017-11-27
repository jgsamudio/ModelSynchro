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
    private let jsonParser: JsonParser
    
    init(config: ConfigurationFile) {
        self.config = config
        jsonParser = JsonParser(config: config)
    }
    
    func generateModels() {
        config.endpoints.forEach {
            guard let request = urlRequest(urlString: $0) else {
                return
            }
            requestJSONData(request: request)
        }
        jsonParser.writeModelsToFile()
    }
    
    func requestJSONData(request: URLRequest) {
        let sema = DispatchSemaphore(value: 0)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            do {
                guard let data = data, let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? JSON else {
                    return
                }
                // TODO
                self.jsonParser.parse(json: json, modelName: "sample")
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
}
