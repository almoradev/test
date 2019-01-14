//
//  BaseViewController.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol BaseViewProtocol: class {
    func showLoading()
    func hideLoading()
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
    
    func showLoading() {
        DispatchQueue.main.async {
            UIApplication.shared.isNetworkActivityIndicatorVisible = true
            SVProgressHUD.setFadeInAnimationDuration(0.0)
            SVProgressHUD.setFadeOutAnimationDuration(0.0)
            SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.clear)
            SVProgressHUD.show()
        }
    }
    
    func hideLoading() {
        DispatchQueue.main.async {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            SVProgressHUD.dismiss()
        }
    }
}

