//
//  TownViewController.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class TownViewController: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCell()
    }
    
    func tableViewCell() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 200
        tableView.tableFooterView = UIView()
        tableView.register(TownTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.viewConstraint(to: view)
    }
}

extension TownViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TownTableViewCell
        cell.town_label_name.text = "fafafasa"
        return cell
    }
}
