//
//  StringExtension.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/27/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

extension String {
    
    func capitalizedFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
    
    func lowercaseFirstLetter() -> String {
        return prefix(1).lowercased() + dropFirst()
    }
    
    /// Returns the string separated by the provided `string` parameter as a tuple
    ///
    /// - Parameter string: The separator string
    /// - Returns: The string separated by the provided `string` parameter as a tuple
    func split(at string: String) -> (leftString: String, rightString: String)? {
        if let range = range(of: string)  {
            let leftString = self[startIndex..<range.lowerBound]
            let rightString = self[range.lowerBound..<endIndex]
            return (leftString.trimmingCharacters(in: .whitespaces), rightString.trimmingCharacters(in: .whitespaces))
        }
        return nil
    }
    
    /// Returns the substring that falls between the provided startString and endString
    ///
    /// - Parameters:
    ///   - startString: The start string
    ///   - endString: The end string
    /// - Returns: The substring that falls between startString and endString
    func stringBetween(startString: String, endString: String) -> String? {
        if let startRange = range(of: startString),
            let endRange = range(of: endString),
            startRange.upperBound < endRange.lowerBound {
            
            return String(self[startRange.upperBound..<endRange.lowerBound])
        }
        return nil
    }
    
    /// Returns the substring that contains the characters after first occurrence of the provided token.
    ///
    /// - Parameter token: The token
    /// - Returns: The substring that contains the characters after first occurrence of the provided token.
    func removeLeading(startWith token: String) -> String {
        if let token = range(of: token) {
            var newString = self
            newString.removeSubrange(startIndex..<token.upperBound)
            return newString
        }
        return self
    }
    
    ///
    /// - Parameter token: Token to search for.
    /// - Returns: String that has all characters after the token removed.
    func removeTrailing(startWith token: String) -> String {
        if let token = range(of: token) {
            var newString = self
            newString.removeSubrange(token.lowerBound..<endIndex)
            return newString
        }
        return self
    }

    func writeToFile(directory: String) {
        guard let fileURL = URL(string: directory) else {
            CommandError.validUrl.displayError(with: directory)
            return
        }

        do {
            try write(to: fileURL, atomically: false, encoding: .utf8)
        } catch {
            CommandError.writeToFile.displayError()
        }
    }
}
