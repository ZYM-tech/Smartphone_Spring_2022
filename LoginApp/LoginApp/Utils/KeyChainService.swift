//
//  KeyChainService.swift
//  LoginApp
//
//  Created by 张一鸣 on 2022/3/27.
//

import Foundation
import KeychainSwift

class KeyChainService {
    
    var _keyChain = KeychainSwift()
    
    var keyChain :  KeychainSwift {
        
        get{
            return _keyChain
        }
        
        set {
            _keyChain = newValue
        }
        
    }
}
