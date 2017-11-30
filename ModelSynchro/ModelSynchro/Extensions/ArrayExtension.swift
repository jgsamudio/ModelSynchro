//
//  ArrayExtension.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/30/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

extension Array where Element == Line {
    
    /// Finds the line in the array of lines.
    ///
    /// - Parameter line: Line to search for.
    /// - Returns: Optional Line if found.
    func find(line: Line) -> Line? {
        return first(where: { (otherLine) -> Bool in
            return line == otherLine
        })
    }
}
