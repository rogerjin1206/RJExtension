//
//  UITableView.swift
//  RJExtension
//
//  Created by Euijae Hong on 2018. 8. 3..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation

extension UITableView {
    
    public func registerCell<T: UITableViewCell>(ofType type: T.Type) {
        register(T.self, forCellReuseIdentifier: String(describing: T.self))
        
    }
    
    public func dequeueCell<T: UITableViewCell>(ofType type: T.Type , indexPath :IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.className, for: indexPath) as! T
        
    }
    
}
