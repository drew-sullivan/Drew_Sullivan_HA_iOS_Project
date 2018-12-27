//
//  ProStore.swift
//  Drew_Sullivan_HA_iOS_Project
//
//  Created by Drew Sullivan on 12/27/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import UIKit

class ProStore {
    var pros = [Pro]()
    
    init() {
        parseJSONtoPros()
        pros = pros.sorted { $0.companyName < $1.companyName }
    }
    
    func parseJSONtoPros() {
        do {
            if let file = Bundle.main.url(forResource: "pro_data", withExtension: "json") {
                let data = try Data(contentsOf: file, options: [])
                pros = try JSONDecoder().decode([Pro].self, from: data)
            } else {
                print("No file at that location")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
