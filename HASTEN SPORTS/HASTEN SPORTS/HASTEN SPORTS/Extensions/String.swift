//
//  String.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import Foundation

extension String {

    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
