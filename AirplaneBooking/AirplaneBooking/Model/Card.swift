//
//  Card.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct Card: Identifiable {
    
    var id = UUID()
    var image: Image
    
}


let cardsData: [Card] = [
    
    Card(image: Image.cards.card1),
    Card(image: Image.cards.card2),
    Card(image: Image.cards.card3),
    Card(image: Image.cards.card4),
    Card(image: Image.cards.card5),
    Card(image: Image.cards.card6),
    Card(image: Image.cards.card7),
    Card(image: Image.cards.card8),
    Card(image: Image.cards.card9),
    Card(image: Image.cards.card10)
]
