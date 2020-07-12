//
//  GenericsDemo.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation

func add<T: Numeric>(a: T, b: T) {
    let total = a + b
    print(total)
}


func callForResut(){
    add(a: 10,b: 10)
    add(a: 10.0,b: 20.0)
}


struct Queue<T> {
    var elements: [T] = []
    
    mutating func insert(element: T) {
        elements.append(element)
    }
    
    mutating func remove() -> T?{
        guard let firstElement = elements.first else {
            return nil
        }
        elements.remove(at: 0)
        return firstElement
    }
}


struct Stack<T> {
    var elements: [T] = []
    
    mutating func insert(element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        guard elements.last != nil else{
            return nil
        }
        elements.popLast()
        return elements as? T
    }
}
