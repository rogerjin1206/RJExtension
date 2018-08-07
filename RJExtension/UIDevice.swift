//
//  UIDevice.swift
//  RJExtension
//
//  Created by ROGER on 06/08/2018.
//  Copyright © 2018 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit


extension UIDevice {
    
    public var deviceId : String {
        
        guard let uuid = self.identifierForVendor?.uuidString  else { return "No" }
        return uuid
    }
    
    public var deviceIOSVersion : String {
        
        return self.systemVersion
        
    }
    
    
}
