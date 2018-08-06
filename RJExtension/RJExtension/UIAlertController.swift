//
//  UIAlertController.swift
//  RJExtension
//
//  Created by ROGER on 06/08/2018.
//  Copyright © 2018 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    
    static func showMessage(title:String,vc:UIViewController) {
        
        let alertVC = UIAlertController(title:title, message: nil, preferredStyle: .alert)
        let done = UIAlertAction(title:"OK", style: .default, handler: nil)
        
        alertVC.addAction(done)
        vc.present(alertVC, animated: true, completion: nil)
        
    }
}
