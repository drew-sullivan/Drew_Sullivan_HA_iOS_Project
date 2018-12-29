//
//  ProDetailsViewControllerTests.swift
//  Drew_Sullivan_HA_iOS_ProjectTests
//
//  Created by Drew Sullivan on 12/29/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import XCTest

@testable import Drew_Sullivan_HA_iOS_Project

class ProDetailsViewControllerTests: XCTestCase {
    
    let storyboardName = "Main"
    let vcIdentifier = "proDetailsViewController"
    var vc: ProDetailsViewController!

    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let pro = ProStore().pros[0]
        vc = storyboard.instantiateViewController(withIdentifier: vcIdentifier) as? ProDetailsViewController
        vc.pro = pro
    }

    override func tearDown() {
        vc.pro = nil
        
        super.tearDown()
    }

}
