//
//  Information.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import Foundation


struct Information: Identifiable {
    
    var id = UUID()
    var title: String
    var subtitle: String
    
}

let informationData: [Information] = [
    
    Information(title: "Flight", subtitle: "AR 580"),
    Information(title: "Class", subtitle: "Premium"),
    Information(title: "Aircraft", subtitle: "B 737-900"),
    Information(title: "Possibility", subtitle: "AR 580")
]
