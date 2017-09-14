//
//  ZQUtil.swift
//  HYJFSwift
//
//  Created by PC-zhaozhiqiang on 2017/9/12.
//  Copyright © 2017年 zhao. All rights reserved.
//

import Foundation

public func decodableObject<T: Decodable>(_ object:AnyObject, keyPath:String? = nil, decoder: JSONDecoder = JSONDecoder(), type: T.Type) throws -> T {
    
    var obj = object
    if let keyPath = keyPath {
        obj = object.value(forKeyPath: keyPath) as AnyObject
    }
    do {
        let data = try JSONSerialization.data(withJSONObject: obj)
        let value = try decoder.decode(T.self, from: data)
        return value
    }
    catch {
        throw error
    }
}




