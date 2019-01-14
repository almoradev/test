//
//  BasePresenter.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

class BasePresenter<T: BaseViewProtocol> {
    
    private weak var _view: T?
    private var _networkService: NetworkService?
    
    var networkService: NetworkService? {
        return _networkService
    }
    
    
    var view: T? {
        return _view
    }
    
    init(view: T, networkService: NetworkService) {
        _view = view
        _networkService = networkService
    
    }
    
    convenience init(_ view: T) {
        let networkService = NetworkService()
        self.init(view: view, networkService: networkService)
    }
    
    deinit {
        _view = nil
        _networkService = nil
    }
}

