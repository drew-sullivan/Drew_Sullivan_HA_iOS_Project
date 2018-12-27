//
//  ProsViewController.swift
//  Drew_Sullivan_HA_iOS_Project
//
//  Created by Drew Sullivan on 12/27/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import UIKit

class ProsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readJsonFile()
        
        
        
    }
    
    func readJsonFile() {
        do {
            if let file = Bundle.main.url(forResource: "pro_data", withExtension: "json") {
                let data = try Data(contentsOf: file, options: [])
                
                let pros: [Pro] = try JSONDecoder().decode([Pro].self, from: data)
                pros.forEach { print($0.companyName) }
            } else {
                print("No file at that location")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
