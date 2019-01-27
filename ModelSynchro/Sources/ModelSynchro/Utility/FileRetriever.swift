//
//  FileRetriever.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 2/12/18.
//  Copyright © 2018 Jonathan Samudio. All rights reserved.
//

import Foundation

struct FileRetriever {

    static func retrieveFilenames(at path: String, fileExtension: String) -> [String] {
        let fileEnumerator = FileManager.default.enumerator(atPath: path)
        let enumerator = fileEnumerator?.filter{ ($0 as? String)?.contains(fileExtension) ?? false }

        guard let filteredFileEnumerator = enumerator as? [String] else {
            print("Error filtering files.")
            return []
        }
        return filteredFileEnumerator
    }
}
