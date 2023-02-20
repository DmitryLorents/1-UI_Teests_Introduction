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
    
    var  modulesFactory = ModulesFactoryImpl()
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
            toNextScreen()
        default: break
        }
        return true
    }

    
    func toNextScreen() {
        
        guard let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else {return}
        let screen = modulesFactory.getModule(by: .main)
        sceneDelegate.window?.rootViewController = screen
        sceneDelegate.window?.makeKeyAndVisible()
                
        screen.modalPresentationStyle = .fullScreen
        present(screen, animated: true)
        
    }
}

