//
//  TownViewController.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/23/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore


class TownViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataB: Firestore!
    
    var towns = [Town]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        dataB = Firestore.firestore()
        fetch_twons()
    }
    
    func fetch_twons() {
        Service.firestoreDB.collection(TownCollectionKey.CollectionKey).addSnapshotListener { (query, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let query = query {
                var town = [Town]()
                for document in query.documents {
                    let town_info = Town(dict: document.data())
                    town.append(town_info)
                }
                self.towns = town
                print("List of Towns: \(self.towns)")
            }
        }
    }
}

extension TownViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return towns.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TownTableViewCell
        return cell
    }
}
