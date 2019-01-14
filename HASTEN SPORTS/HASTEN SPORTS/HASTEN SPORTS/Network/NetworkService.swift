//
//  NetworkService.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

import Moya
import SwiftyJSON

struct NetworkService {
    
    typealias ResponseError = (_ error: hastenSportsError) -> Void
    
    private var provider: MoyaProvider<hastenSport>
    
    private enum StatusCode {
        static let InvalidCredentials = 412
    }
    
    init() {
        let provider = MoyaProvider<hastenSport>(plugins: [NetworkLoggerPlugin(verbose: true)])
        //    let provider = MoyaProvider<Supervida>()
        self.init(provider: provider)
    }
    
    init(provider: MoyaProvider<hastenSport>) {
        self.provider = provider
    }
    
   
}

extension NetworkService {
    
    func fetchUsers(_ success: @escaping (_ speakers: [UserJson]) -> Void, failure:  @escaping ResponseError) {
        provider.request(.checkUsers) { result in
            switch result {
            case let .success(response):
                do {
                    let json = try JSON(response.mapJSON())
                    let users:[UserJson] = json.arrayValue.map { UserJson.initWith($0) }
                    success(users)
                } catch {
                    failure(ResponseError.wrongResponse)
                }
            case .failure:
                failure(ResponseError.wrongResponse)
            }
        }
    }
    
   
}
