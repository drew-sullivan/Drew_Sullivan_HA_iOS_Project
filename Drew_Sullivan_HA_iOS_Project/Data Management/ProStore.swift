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
        readJSONFile(fileName: "pro_data", fileExtension: "json")
        pros = pros.sorted { $0.companyName < $1.companyName }
    }
    
    private func readJSONFile(fileName res: String, fileExtension ext: String) {
        do {
            if let file = Bundle.main.url(forResource: res, withExtension: ext) {
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
