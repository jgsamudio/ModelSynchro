//
//  Data.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

extension Data {
    
    func deserializeObject<T: Decodable>(completion: (T?, Error?)->()) {
        let decoder = JSONDecoder()
        do {
            let object = try decoder.decode(T.self, from: self)
            completion(object, nil)
        }
        catch {
            completion(nil, NetworkError.objectSerialization(reason: "Object Serialization Failed"))
        }
    }
    
    func deserializeArray<T: Decodable>(completion: ([T]?, Error?)->()) {
        let decoder = JSONDecoder()
        do {
            let object = try decoder.decode([T].self, from: self)
            completion(object, nil)
        }
        catch {
            completion(nil, NetworkError.objectSerialization(reason: "Array Serialization Failed"))
        }
    }
}
