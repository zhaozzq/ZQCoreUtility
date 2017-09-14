//
//  ZQNotification.swift
//  HYJFSwift
//
//  Created by PC-zhaozhiqiang on 2017/9/8.
//  Copyright © 2017年 zhao. All rights reserved.
//

import Foundation

public protocol ZQNotification {
    var name: Notification.Name { get }
}

extension RawRepresentable where RawValue == String, Self: ZQNotification {
    public var name: Notification.Name {
        return Notification.Name("ZQ" + self.rawValue)
    }
}

public extension NotificationCenter {

    public func post<Z: ZQNotification>(name notification: Z, object: Any?, userInfo: [AnyHashable : Any]? = nil) {
        self.post(name: notification.name, object: object, userInfo: userInfo)
    }
    
    public func addObserver<Z: ZQNotification>(_ observer: Any, selector: Selector, name notification: Z, object: Any?) {
        self.addObserver(observer, selector: selector, name: notification.name, object: object)
    }
    
}

//enum HYJFNotification: String, ZQNotification{
//    case userLogin
//}
//NotificationCenter.default.post(customeNotification: HYJFNotification.userLogin, object: nil);


