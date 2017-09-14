//
//  ZQSecurity.swift
//  HYJFSwift
//
//  Created by zhaozq on 2017/8/17.
//  Copyright © 2017年 zhao. All rights reserved.
//

import Foundation
//import CryptoSwift

extension String {
//    var base64Encoded: String {
//        let data = self.data(using: .utf8)
//        let base64 = data?.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
//        return base64 ?? ""
//    }
    
    func base64Encoded() -> String? {
        if let data = self.data(using: .utf8) {
            return data.base64EncodedString()
        }
        return nil
    }
    
    func base64Decoded() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
}

//public func encryptUseDES(_ string: String, key: String) -> String {
//    var data = string.data(using: .utf8)
//    
//    return "nil"
//}

