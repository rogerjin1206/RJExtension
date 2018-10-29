//
//  UICollectionView.swift
//  RJExtension
//
//  Created by Euijae Hong on 2018. 8. 3..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit

open class BasicCollectionViewCell : UICollectionViewCell {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        initial()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    
    open func initial() {
        
    }
    
}

public extension UICollectionView {
    
    public func registerCell<T:UICollectionViewCell>(ofType type: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.className)
        
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type,
                                                             for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as! T
    }
    
    public func dequeueReusableView<T: UICollectionReusableView>(with type: T.Type,
                                                                 for indexPath: IndexPath,
                                                                 ofKind kind: String = UICollectionView.elementKindSectionHeader) -> T {
        
        return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.className, for: indexPath) as! T
    }
    
}


