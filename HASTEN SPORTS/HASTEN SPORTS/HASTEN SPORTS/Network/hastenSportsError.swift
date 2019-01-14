//
//  hastenSportsError.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

enum hastenSportsError: Error {
    case errorRequest
    case errorUser
    case wrongResponse
}

extension hastenSportsError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .errorRequest:
            return ""
        case .errorUser:
            return ""
        case .wrongResponse:
             return ""
        }
    }
}
    


