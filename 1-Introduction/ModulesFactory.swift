//
//  ModulesFactory.swift
//  1-Introduction
//
//  Created by Mac on 20.02.2023.
//

import Foundation
import UIKit
protocol ModulesFactory {
    
}

enum Modules {
    case main
}

class ModulesFactoryImpl: ModulesFactory {
    func getModule(by type: Modules) -> UIViewController {
        switch type {
        case .main:
            return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondController")
        }
    }
}
