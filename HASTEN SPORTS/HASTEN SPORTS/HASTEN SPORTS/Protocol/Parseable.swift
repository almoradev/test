//
//  Parseable.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

protocol Parseable {
    static func initWith(_ json: JSON) -> Self
}
