//
//  Date.swift
//  RJExtension
//
//  Created by Euijae Hong on 2018. 8. 17..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation

extension Date {
    
    public var getYear : Int {
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: self)
        let year =  components.year
        
        return year!
        
    }
    
    public var getMonth : Int {
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.month], from: self)
        
        return components.month!
        
    }
    
    public var getDay : Int {
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: self)
        
        let day = components.day
        
        return day!
        
    }
    
    public var changeDateToString : String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateStr = dateFormatter.string(from: self)
        
        return dateStr
    }
    
    public func changeStringToDate(_ dateStr : String) -> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: dateStr) else { return Date() }
        
        return date
        
    }
    
    
    
}
