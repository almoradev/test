//
//  SportJson.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation
import SwiftyJSON

final class SportJson {
    var players: [UserJson] = []
    var typeSport: String = ""
    var title: String = ""
    
}

extension SportJson: Parseable {
    
    static func initWith(_ json: JSON) -> SportJson {
        let sportJson = SportJson()
        
        sportJson.players = json["players"].arrayValue.map { UserJson.initWith($0) }
        sportJson.typeSport = json["type"].stringValue
        sportJson.title = json["title"].stringValue
        
        
        return sportJson
    }
}

