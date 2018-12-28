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
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 65
    }
    
    // MARK: - TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proStore.pros.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProCell", for: indexPath) as! ProCell
        let pro = proStore.pros[indexPath.row]
        cell.proNameLabel.text = pro.companyName
        cell.ratingInfoLabel.text = pro.ratingInformation
        
        if let rating = Double(pro.compositeRating), rating > 0 {
            cell.ratingInfoLabel.textColor = getRatingInfoColor(rating: rating)
        } else {
            cell.ratingInfoLabel.textColor = UIColor.black
        }
        
        return cell
    }
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showProDetails":
            if let row = tableView.indexPathForSelectedRow?.row {
                let pro = proStore.pros[row]
                let proDetailsViewController = segue.destination as! ProDetailsViewController
                proDetailsViewController.pro = pro
            }
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
    
    // MARK: - Helpers
    private func getRatingInfoColor(rating num: Double) -> UIColor {
        if num >= 4.0 {
            return UIColor.green
        } else if num >= 3.0 {
            return UIColor.orange
        } else {
            return UIColor.red
        }
    }
}
