//
//  ClosuresDemo.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

class Operation{
    
    func add(a: Int, b: Int) ->Int{
        return a + b
    }
    
    //Closure
    
    let sum: (Int, Int) -> (Int) = {(a,b) in
        return a+b
    }
    
    //Infered type Closue
    
    let addTwoNumber: (_ a:Int, _ b:Int) -> Int = {(a,b) -> Int in
        return a + b
    }
    
    let name = {() -> String in
        return "Chandrasekar" + " Mohan"}
    
    
    let value = {"sdfdfjkdhgdjh"}
}
