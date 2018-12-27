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
        
        do {
            if let file = Bundle.main.url(forResource: "pro_data", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }
        } catch {
            
        }
        
        
        
    }
    
}
