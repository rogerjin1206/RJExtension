//
//  UITableView.swift
//  RJExtension
//
//  Created by Euijae Hong on 2018. 8. 3..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit


// 베이직 테이블뷰 모델 클래스
open class BasicTableViewCell : UITableViewCell {
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        initial()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    open func initial() {
        
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
