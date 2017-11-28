//
//  LineContent.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

final class LineContent {
    
    /// Iteration id.
    let iteration: Int

    /// Lines that are to be added to the model's file
    var fileLines = [String]()
    
    /// All properties found for this model's iteration.
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
