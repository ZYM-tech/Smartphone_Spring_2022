//
//  StringExtension.swift
//  LoginApp
//
//  Created by 张一鸣 on 2022/3/27.
//

import Foundation
extension String{
    
    var isEmail : Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)

        return emailTest.evaluate(with: self)
    }
    var isPasswordvaild : Bool {
        
        let passwordRegEx = "^.*(?=.{6,})(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*\\d)|(?=.*[!#$%&? ]).*$"

        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)

        return passwordTest.evaluate(with: self)
    }
}
