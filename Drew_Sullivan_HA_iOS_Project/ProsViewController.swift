//
//  ProsViewController.swift
//  Drew_Sullivan_HA_iOS_Project
//
//  Created by Drew Sullivan on 12/27/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import UIKit

class ProsViewController: UITableViewController {
    
    var proStore: ProStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proStore.pros.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "UITableViewCell")
        let pro = proStore.pros[indexPath.row]
        cell.textLabel?.text = pro.companyName
        cell.detailTextLabel?.text = "Ratings: \(pro.compositeRating) | \(pro.ratingCount) rating(s)"
        return cell
    }
}
