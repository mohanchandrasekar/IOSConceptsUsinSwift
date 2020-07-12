//
//  SwiftPropertyDemo.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

struct Square {
    var side: Int = 10{
        didSet{
            print("print the value after \(oldValue)")
        }
        willSet{
            print("Print future value \(newValue)")
        }
    }
    
    var area :Int{
        return side * side
    }
    
    var volume: Int{
        return side * side * side
    }
    //Lazy is useful when the variable or methods are going accessable at the time of call
    lazy var initilalizeValue = 10
}


