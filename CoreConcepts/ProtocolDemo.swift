//
//  ProtocolDemo.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

struct Car: CarConfiguration, VehicleProperty {
    var number: String = "1233"
    
    func getSpeed() -> Double {
        return speed
    }
    
    func getVIN() -> String {
        return VIN
    }
    
    func getCarName() -> String {
        return name
    }
    
    private var name: String
    private var speed: Double
    private var VIN: String
}

protocol CarConfiguration {
    func getSpeed() -> Double
    func getVIN() -> String
    func getCarName() -> String
}

protocol VehicleProperty {
    var number: String {
        get set
    }
}
