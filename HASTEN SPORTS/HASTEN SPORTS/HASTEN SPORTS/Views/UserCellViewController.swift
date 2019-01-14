//
//  UserCellViewController.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import UIKit
import Kingfisher

class UserCellViewController: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with userJson: UserJson) {
        nameLabel.text = userJson.name
        surnameLabel.text = userJson.surname
        imageUser.kf.indicatorType = .activity
        let url = URL(string: userJson.image)!
        imageUser.kf.setImage(with: url, options: [.transition(.fade(0.8))])
    }

}
