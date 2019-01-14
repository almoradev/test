//
//  UserJson.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

final class UserJson: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var surname: String = ""
    
}

extension UserJson: Parseable {
    
    static func initWith(_ json: JSON) -> UserJson {
        let userJson = UserJson()
        
        userJson.name = json["name"].stringValue
        userJson.surname = json["surname"].stringValue
        userJson.image = json["image"].stringValue
       
        
        return speaker
    }
}
