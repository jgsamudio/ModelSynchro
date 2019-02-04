//
//  Endpoint.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

public struct Endpoint: Codable {
    
    // MARK: - Public Properties
    
    let functionName: String?
    let responseModelName: String
    let url: String?
    let endpoint: String?
    let authorized: Bool
    let method: HTTPMethod
    
    var pathInfo: RequestInfo?
    var queryInfo: RequestInfo?
    var bodyInfo: RequestInfo?
}

extension Endpoint {
    
    var requestModelNames: [String] {
        return requestInfoArray.compactMap { $0.modelName }
    }
    
    var totalDataCount: Int {
        return (pathInfo?.data?.count ?? 0) + (queryInfo?.data?.count ?? 0) + (bodyInfo?.data?.count ?? 0)
    }
    
    func urlRequest(baseUrl: String?) -> URLComponents? {
        if let url = url {
            return URLComponents(string: sanitize(url: url))
        } else if let endpoint = endpoint, let baseUrl = baseUrl {
            return URLComponents(string: sanitize(url: "\(baseUrl)\(endpoint)"))
        }
        return nil
    }
    
    mutating func updateConfiguration(with json: JSON) {
        if let pathInfoJson = json["pathInfo"] as? JSON, let dataJson = pathInfoJson["data"] as? JSON {
            pathInfo?.data = dataJson
        }
        
        if let queryInfoJson = json["queryInfo"] as? JSON, let dataJson = queryInfoJson["data"] as? JSON {
            queryInfo?.data = dataJson
        }
        
        if let bodyInfoJson = json["bodyInfo"] as? JSON, let dataJson = bodyInfoJson["data"] as? JSON {
            bodyInfo?.data = dataJson
        }
    }
}

private extension Endpoint {
    
    var requestInfoArray: [RequestInfo] {
        return [pathInfo, queryInfo, bodyInfo].compactMap { $0 }
    }
    
    func sanitize(url: String) -> String {
        var urlString = url
        pathInfo?.data?.forEach { urlString = urlString.replacingOccurrences(of: "{\($0.key)}",
            with: $0.value as? String ?? "") }
        return urlString
    }
}
