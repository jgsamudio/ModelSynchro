//
//  LineContent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class LineContent {
    
    let iteration: Int

    var fileLines = [String]()
    var propertyLines = [String]()
    
    init(iteration: Int) {
        self.iteration = iteration
    }
    
    func checkOptional(otherLineContent: LineContent) {
        for line in propertyLines {
            if otherLineContent.propertyLines.index(of: line) == nil, let index = fileLines.index(of: line) {
                fileLines[index] = line + ((line.last != "?") ? "?" : "")
            }
        }
    }
}
