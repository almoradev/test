//
//  ViewController.swift
//  HASTEN SPORTS
//
//  Created by Ramón Ramírez Carreras on 14/1/19.
//  Copyright © 2019 Ramón Ramírez Carreras. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol: BaseViewProtocol {
    func showUser(_ users: [SportJson])
}


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var usersJson: [SportJson] = []
    private var presenter: ViewControllerPresenter<ViewController>?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = ViewControllerPresenter(self)
        presenter?.loadUsers()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if usersJson.count > 0 {
            return usersJson[section].players.count
        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if usersJson.count > 0 {
            return usersJson[section].title
        }else{
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCellViewController", for: indexPath) as! UserCellViewController
        cell.configure(with: usersJson[indexPath.section].players[indexPath.row])
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}


extension ViewController: ViewControllerProtocol {
    
    func showUser(_ users: [SportJson]) {
        self.usersJson = users
        tableView.reloadData()
    }
}

