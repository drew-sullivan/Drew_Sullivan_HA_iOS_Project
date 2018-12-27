//
//  Pro.swift
//  Drew_Sullivan_HA_iOS_Project
//
//  Created by Drew Sullivan on 12/27/18.
//  Copyright © 2018 Drew Sullivan. All rights reserved.
//

import Foundation

struct Pro: Decodable {
    var entityId: String
    var companyName: String
    var ratingsCount: Int
    var compositeRating: Double
    var companyOverview: String
    var canadianSP: Bool
    var spanishSpeaking: Bool
    var phoneNumber: String
    var latitude: Double
    var longitude: Double
    var servicesOffered: String
    var specialty: String
    var primaryLocation: String
    var email: String
    init(entityId: String,
         companyName: String,
         ratingsCount: Int,
         compositeRating: Double,
         companyOverview: String,
         canadianSP: Bool,
         spanishSpeaking: Bool,
         phoneNumber: String,
         latitude: Double,
         longitude: Double,
         servicesOffered: String,
         specialty: String,
         primaryLocation: String,
         email: String) {
        self.entityId = entityId
        self.companyName = companyName
        self.ratingsCount = ratingsCount
        self.compositeRating = compositeRating
        self.companyOverview = companyOverview
        self.canadianSP = canadianSP
        self.spanishSpeaking = spanishSpeaking
        self.phoneNumber = phoneNumber
        self.latitude = latitude
        self.longitude = longitude
        self.servicesOffered = servicesOffered
        self.specialty = specialty
        self.primaryLocation = primaryLocation
        self.email = email
    }
    
}
