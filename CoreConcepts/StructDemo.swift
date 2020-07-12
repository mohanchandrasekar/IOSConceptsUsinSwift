//
//  StructDemo.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation


struct Ticket {
    var id: Int
    var cost: Int
    var time: String
    var movieName: String
    var sear: Int
    
    func show() -> Void {
        print(".\(id)")
        print(".\(cost)")
        print(".\(time)")
        print(".\(movieName)")
    }
}

func getShowTickets(){
    let ticketShow = Ticket(id: 1, cost: 100, time: "10:00 AM", movieName: "Peta", sear: 45)
    ticketShow.show()
}
