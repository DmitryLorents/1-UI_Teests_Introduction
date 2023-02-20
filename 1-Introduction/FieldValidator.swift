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
        return loginTF.hasText && passwordTF.hasText && passwordTF.text == "123"
}
}
