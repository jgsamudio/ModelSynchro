//
//  DateExtension.swift
//  ModelSynchro
//
//  Created by Jonathan Samudio on 11/28/17.
//  Copyright © 2017 Jonathan Samudio. All rights reserved.
//

import Foundation

extension Date {
    
    static var currentDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yy"
        let formattedDate = formatter.string(from: Date())
        return formattedDate
    }
    
    static var currentYearString: String {
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year, from: date))
    }
}
