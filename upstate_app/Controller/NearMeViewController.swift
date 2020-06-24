//
//  NearMeViewController.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
import Firebase

class NearMeViewController: UIViewController{

    var tableView = UITableView()
    var loadData: [NearMe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData = fetchData()
        confiTabelView()
    }

    func confiTabelView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(NearMeTableViewCell.self, forCellReuseIdentifier: "myCell")
        tableView.viewConstraint(to: view)
    }
}

extension NearMeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loadData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! NearMeTableViewCell
        let data = loadData[indexPath.row]
        cell.setContent(data: data)
        return cell
    }
}

extension NearMeViewController {
    func fetchData() -> [NearMe] {
        let imgs = NearMe(image: Images.im, title: "dfnlsjksskjkskkjs", address: "fsdfas")
        let imgs1 = NearMe(image: Images.im1, title: "dfnlsjksskjkskkjs", address: "fsdfas")
        let imgs2 = NearMe(image: Images.im2, title: "dfnlsjksskjkskkjs", address: "fsdfas")
        let imgs3 = NearMe(image: Images.im3, title: "dfnlsjksskjkskkjs", address: "fsdfas")
        return [imgs,imgs1,imgs2,imgs3]
    }
}


struct Images {
    static let im =  UIImage(named: "index")!
    static let im1 = UIImage(named: "index1")!
    static let im2 = UIImage(named: "index2")!
    static let im3 = UIImage(named: "index3")!
}
