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
    
    let responseModelName: String
    let url: String?
    let endpoint: String?
    let authorized: Bool
    let method: HTTPMethod    
    let pathInfo: RequestInfo?
    let queryInfo: RequestInfo?
    let bodyInfo: RequestInfo?
}

extension Endpoint {
    
    func urlRequest(baseUrl: String?) -> URLComponents? {
        if let url = url {
            return URLComponents(string: sanitize(url: url))
        } else if let endpoint = endpoint, let baseUrl = baseUrl {
            return URLComponents(string: sanitize(url: "\(baseUrl)\(endpoint)"))
        }
        return nil
    }
    
    var requestModelNames: [String] {
        return requestInfoArray.compactMap { $0.modelName }
    }
    
    var totalDataCount: Int {
        return (pathInfo?.data.count ?? 0) + (queryInfo?.data.count ?? 0) + (bodyInfo?.data.count ?? 0)
    }
    
    private var requestInfoArray: [RequestInfo] {
        return [pathInfo, queryInfo, bodyInfo].compactMap { $0 }
    }
    
    private func sanitize(url: String) -> String {
        var urlString = url
        pathInfo?.data.forEach { urlString = urlString.replacingOccurrences(of: "{\($0.key)}",
            with: $0.value as? String ?? "") }
        return urlString
    }
}

public struct RequestInfo: Codable {
    let modelName: String?
    let data: JSON
    
    private enum CodingKeys: String, CodingKey {
        case modelName
        case data
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        modelName = try container.decode(String.self, forKey: .modelName)
        
        if let data = try? container.decode([String: String].self, forKey: .data) {
            self.data = data
        } else if let data = try? container.decode([String: Int].self, forKey: .data) {
            self.data = data
        } else if let data = try? container.decode([String: Bool].self, forKey: .data) {
            self.data = data
        } else if let data = try? container.decode([String: Double].self, forKey: .data) {
            self.data = data
        } else {
            throw EncodingError.invalidValue("", EncodingError.Context(codingPath: [CodingKeys.data],
                                                                       debugDescription: "Invalid Data Type"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        // Not Implemented
    }
    
}
