//
//  BaseViewController.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

protocol BaseViewProtocol: class {
    func showMessage(_ message: String, title: String?, alternativeAction: UIAlertAction?, acceptAction: UIAlertAction)
}


class BaseViewController: UIViewController {
    
    
}

extension UIViewController: BaseViewProtocol {
    
    func showMessage(_ message: String,
                     title: String?,
                     alternativeAction: UIAlertAction?,
                     acceptAction: UIAlertAction) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if let alternativeAction = alternativeAction {
            alert.addAction(alternativeAction)
        }
        
        alert.addAction(acceptAction)
        
        DispatchQueue.main.async {
            UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
        }
    }
}

