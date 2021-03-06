//
//  ProsViewController.swift
//  Drew_Sullivan_HA_iOS_Project
//
//  Created by Drew Sullivan on 12/27/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import UIKit

class ProsTableViewController: UITableViewController {
    
    var proStore: ProStore!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 65
    }
    
    // MARK: - TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proStore.numPros
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProTableViewCell", for: indexPath) as! ProTableViewCell
        let pro = proStore.pro(forIndex: indexPath.row)
        
        cell.proNameLabel.text = pro.companyName
        cell.ratingInfoLabel.text = pro.ratingInformation
        cell.ratingInfoLabel.textColor = pro.ratingInfoColor
        
        return cell
    }
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "proDetailsSegue":
            if let row = tableView.indexPathForSelectedRow?.row {
                let pro = proStore.pro(forIndex: row)
                let proDetailsViewController = segue.destination as! ProDetailsViewController
                proDetailsViewController.pro = pro
            }
        default:
            return
        }
    }
}
