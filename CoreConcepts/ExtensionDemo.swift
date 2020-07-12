//
//  ExtensionDemo.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

protocol MilitryTraining {
    func findBomb(smell: String) -> Void
    func helpSoldier() -> Void
}
struct Dog {
    var isFaceClosed: Bool = true
    func bark() -> Void {
        
    }
    
    func eat(_ food: String) -> Void {
        
    }
}


extension Dog{
    func biteTheif(of faceReaction: Bool) -> Void {
        if(faceReaction == isFaceClosed){
            self.bark()
            print("Bite them")
        }else{
            print("Dont bite")
        }
    }
}

extension Dog: MilitryTraining{
    func findBomb(smell: String) {
        print("Smell is comming find bomb"+smell.auther)
    }
    
    func helpSoldier() {
        print("Help them")
    }
}

extension String{
    var auther: String{
        return "Mohan Chandrasekar"
    }
}
