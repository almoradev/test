//
//  ViewControllerPresenter.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

class ViewControllerPresenter<T: ViewControllerProtocol>: BasePresenter<T> {
    
    func loadUsers() {
        view?.showLoading()
        networkService?.fetchUsers({ [weak self] users in
            self?.view?.hideLoading()
            self?.view?.showUser(users)
            }, failure: { [weak self] _ in
                self?.view?.hideLoading()
        })
    }
}




