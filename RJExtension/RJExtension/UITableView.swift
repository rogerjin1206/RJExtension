//
//  UITableView.swift
//  RJExtension
//
//  Created by Euijae Hong on 2018. 8. 3..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit

class BasicTableViewCell : UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        initial()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    public func initial() {
        
    }
    
}

extension UITableView {
    
    
        
    public func registerCell<T: UITableViewCell>(ofType type: T.Type) {
        register(T.self, forCellReuseIdentifier: T.className)
        
    }
    
    public func dequeueCell<T: UITableViewCell>(ofType type: T.Type , indexPath :IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.className, for: indexPath) as! T
        
    }
    
}
