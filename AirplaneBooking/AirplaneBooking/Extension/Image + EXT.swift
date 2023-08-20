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
    
}


struct CardType {
    
    static let americanExpress = Image("AmericanExpress")
    static let masterCard = Image("MasterCard")
    static let visa = Image("Visa")
}

struct Cards {
    
    static let card1 = Image("Card1")
    static let card2 = Image("Card2")
    static let card3 = Image("Card3")
    static let card4 = Image("Card4")
    static let card5 = Image("Card5")
    static let card6 = Image("Card6")
    static let card7 = Image("Card7")
    static let card8 = Image("Card8")
    static let card9 = Image("Card9")
    static let card10 = Image("Card10")
    
}

struct Users {
    
    static let user1 = Image("User1")
    static let user2 = Image("User2")
}

