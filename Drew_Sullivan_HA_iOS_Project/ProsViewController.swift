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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProCell", for: indexPath) as! ProCell
        let pro = proStore.pros[indexPath.row]
        cell.proNameLabel.text = pro.companyName
        
        var ratingInfo: String
        if let ratingCount = Int(pro.ratingCount), ratingCount > 0 {
            ratingInfo = "Ratings: \(pro.compositeRating) | \(ratingCount) rating(s)"
        } else {
            ratingInfo = "References Available"
        }
        cell.ratingInfoLabel.text = ratingInfo
        
        return cell
    }
}
