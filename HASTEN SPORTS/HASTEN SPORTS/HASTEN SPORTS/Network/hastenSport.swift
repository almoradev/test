//
//  hastenSport.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation
import Foundation
import Moya
import SwiftyJSON

public enum hastenSport {
    case checkUsers(String)
   
}

extension hastenSport: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.myjson.com/bins/")!
    }
    
    public var path: String {
        switch self {
        case .checkUsers:
            return "66851"
        default:
            return ""
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .checkUsers():
           return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        return nil
    }
}

// Helper
extension hastenSport {
    private func generateRequestBody(_ data: [String: Any]) -> String {
        return JSON(data).description
    }
}

