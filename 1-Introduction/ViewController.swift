//
//  ViewController.swift
//  1-Introduction
//
//  Created by Mac on 20.02.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.delegate = self
        passwordTF.delegate = self
        
        loginTF.returnKeyType = .continue
        passwordTF.returnKeyType = .done
        
    }
//MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch  textField {
        case loginTF:
            passwordTF.becomeFirstResponder()
        case passwordTF:
            passwordTF.resignFirstResponder()
            print("Done pressed")
        default: break
        }
        return true
    }

}

