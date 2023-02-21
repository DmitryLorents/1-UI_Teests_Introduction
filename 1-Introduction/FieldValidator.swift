//
//  FieldValidator.swift
//  1-Introduction
//
//  Created by Mac on 20.02.2023.
//

import Foundation
import UIKit

protocol FieldValidator {
    func validateLoginTextField( loginTF: UITextField,  passwordTF: UITextField)  -> Bool
}

class FieldValidatorImpl: FieldValidator {
    
    func validateLoginTextField( loginTF: UITextField,  passwordTF: UITextField)  -> Bool {
        if  loginTF.text == "Password" {
            print("Password")
        }
        return loginTF.hasText && passwordTF.hasText && passwordTF.text == "123"
    }
    
    func asyncValidateLoginTextField( loginTF: UITextField,  passwordTF: UITextField,  completion: @escaping (Bool) -> Void) {
        DispatchQueue.global(qos: .background).async {
            
            let result = loginTF.hasText && passwordTF.hasText && passwordTF.text == "123"
            completion(result)
        }
        
    }
    
}
