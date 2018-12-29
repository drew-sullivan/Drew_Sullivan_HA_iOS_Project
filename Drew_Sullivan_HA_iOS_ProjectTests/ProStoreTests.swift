//
//  ProStoreTests.swift
//  Drew_Sullivan_HA_iOS_ProjectTests
//
//  Created by Drew Sullivan on 12/29/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import XCTest

@testable import Drew_Sullivan_HA_iOS_Project

class ProStoreTests: XCTestCase {
    
    var proStore: ProStore!

    override func setUp() {
        super.setUp()
        
        proStore = ProStore()
    }

    override func tearDown() {
        proStore = nil
        
        super.tearDown()
    }

    func testProStorePopulatedWithProObjects() {
        XCTAssert(proStore.pros.count > 0, "ProStore not populated")
    }

}
