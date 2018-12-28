//
//  ProDetailsViewController.swift
//  Drew_Sullivan_HA_iOS_Project
//
//  Created by Drew Sullivan on 12/27/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import UIKit

class ProDetailsViewController: UIViewController {
    
    @IBOutlet var proNameLabel: UILabel!
    @IBOutlet var specialtyLabel: UILabel!
    @IBOutlet var ratingInformationLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var servicesLabel: UILabel!
    @IBOutlet var overviewTextView: UITextView!
    @IBOutlet var callButton: UIButton!
    @IBOutlet var emailButton: UIButton!
    
    var pro: Pro!
    
    // MARK: - Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        proNameLabel.text = pro.companyName
        specialtyLabel.text = pro.specialty
        ratingInformationLabel.text = pro.ratingInformation
        locationLabel.text = pro.primaryLocation
        servicesLabel.text = pro.serviceInformation
        overviewTextView.text = pro.companyOverview
    }
    
    // MARK: - IBActions
    @IBAction func callButtonTapped(_ sender: UIButton) {
        print("phone = \(pro.phoneNumber)")
    }
    @IBAction func emailButtonTapped(_ sender: UIButton) {
        print("email = \(pro.email)")
    }
    
    
}
