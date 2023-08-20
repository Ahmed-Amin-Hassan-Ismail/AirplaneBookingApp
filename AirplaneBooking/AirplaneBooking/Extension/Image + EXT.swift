//
//  Image + EXT.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

extension Image {
    
    /* App Icons */
    
    static let airplane = Image("Airplane")
    static let cloud = Image("Cloud")
    static let logo = Image("Logo")
    
    
    /* Card Type */
    
    static let cardType = CardType()
    
    
    /* Cards */
    
    static let cards = Cards()
    
    /* Users */
    
    static let users = Users()
    
    
    /* System Name */
    
    static let rightArrow = Image(systemName: "chevron.right")
    
}


struct CardType {
    
    let americanExpress = Image("AmericanExpress")
    let masterCard = Image("MasterCard")
    let visa = Image("Visa")
}

struct Cards {
    
    let card1 = Image("Card1")
    let card2 = Image("Card2")
    let card3 = Image("Card3")
    let card4 = Image("Card4")
    let card5 = Image("Card5")
    let card6 = Image("Card6")
    let card7 = Image("Card7")
    let card8 = Image("Card8")
    let card9 = Image("Card9")
    let card10 = Image("Card10")
    
}

struct Users {
    
    let user1 = Image("User1")
    let user2 = Image("User2")
}

