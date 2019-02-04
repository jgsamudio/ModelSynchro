//
//  Data.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

extension Data {
    
    public func deserializeObject<T: Decodable>(completion: (T?, Error?)->()) {
        let decoder = JSONDecoder()
        do {
            let object = try decoder.decode(T.self, from: self)
            completion(object, nil)
        } catch {
            CommandError.deserialization.displayError(with: error.localizedDescription)
            completion(nil, NetworkError.objectSerialization(reason: "Object Serialization Failed"))
        }
    }
    
    public func deserializeArray<T: Decodable>(completion: ([T]?, Error?)->()) {
        let decoder = JSONDecoder()
        do {
            let object = try decoder.decode([T].self, from: self)
            completion(object, nil)
        } catch {
            CommandError.deserialization.displayError(with: error.localizedDescription)
            completion(nil, NetworkError.objectSerialization(reason: "Array Serialization Failed"))
        }
    }
}
