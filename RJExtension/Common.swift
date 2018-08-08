//
//  Common.swift
//  RJExtension
//
//  Created by ROGER on 2018. 6. 10..
//  Copyright © 2018년 LEEJAEJIN. All rights reserved.
//

import Foundation
import UIKit

// 해당 클래스 이름 가져오기
public protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

public extension ClassNameProtocol {
    
    public static var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
}

extension NSObject: ClassNameProtocol {}
