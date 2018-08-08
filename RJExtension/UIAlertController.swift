//
//  UIAlertViewController.swift
//  RJExtension
//
//  Created by Euijae Hong on 2018. 8. 8..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit


public extension UIAlertController {
    
    public static func showMeassge(message:String,vc:UIViewController) {
        
        let alertVC = UIAlertController(title:message, message: nil, preferredStyle: .alert)
        let done = UIAlertAction(title:"OK", style: .default, handler: nil)
        
        alertVC.addAction(done)
        vc.present(alertVC, animated: true, completion: nil)
        
    }
    
}



