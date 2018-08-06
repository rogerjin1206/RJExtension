//
//  UIViewController.swift
//  RJExtension
//
//  Created by ROGER on 06/08/2018.
//  Copyright © 2018 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    
    public func checkDeinit() {
        
        print("=========================")
        print("deinit: \(self.className)")
        print("=========================")
    }
    
}
