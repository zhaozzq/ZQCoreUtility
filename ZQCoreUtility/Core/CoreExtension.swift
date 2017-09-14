//
//  CoreExtension.swift
//  HYJFSwift
//
//  Created by PC-zhaozhiqiang on 2017/9/9.
//  Copyright © 2017年 zhao. All rights reserved.
//

import Foundation

//dict += ["key": "value"]
//dict.add(["key": "value"])

public func += <K, V> (left: inout [K:V], right: [K:V]) {
    for (k, v) in right {
        left[k] = v
    }
}

extension Dictionary {
    public mutating func add(_ other:Dictionary) {
        for (key, value) in other {
            self.updateValue(value, forKey: key)
        }
    }
}

extension Array {
    
    /// 仿越界get元素
    public func get(at index: Int) -> Element? {
        if self.indices.contains(index) {
            return self[index]
        }
        return nil
    }
}

extension String {
    
    public func clean(_ allOf: String... , with: String) -> String {
        var string = self
        for target in allOf {
            string = string.replacingOccurrences(of: target, with: with)
        }
        return string
    }
    
    public func clean(_ allOf: String...) -> String {
        var string = self
        for target in allOf {
            string = string.replacingOccurrences(of: target, with: "")
        }
        return string
    }
    
}
