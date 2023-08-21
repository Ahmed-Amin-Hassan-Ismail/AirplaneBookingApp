//
//  User.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import SwiftUI



struct User: Identifiable {
    
    var id = UUID()
    var name: String
    var email: String
    var image: Image
    
}


let usersData: [User] = [
    
    User(name: "SEUNGCHUL HA", email: "alaxhenry0121@gmail.com", image: .users.user1),
    User(name: "JESSICA HO", email: "jessiho@gmail.com", image: .users.user2)
]
