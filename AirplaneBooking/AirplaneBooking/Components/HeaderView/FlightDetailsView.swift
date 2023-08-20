//
//  FlightDetailsView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct FlightDetailsView: View {
    
    // MARK: - PROPERTIES
    
    private let alignment: HorizontalAlignment
    private let place: String
    private let code: String
    private let timing: String
    
    // MARK: - INIT
    
    init(alignment: HorizontalAlignment, place: String, code: String, timing: String) {
        
        self.alignment = alignment
        self.place = place
        self.code = code
        self.timing = timing
    }
    
    // MARK: - BODY
    
    var body: some View {
       
        VStack(alignment: alignment, spacing: 6) {
            
            Text(place)
                .font(.caption)
                .foregroundColor(.white)
            
            Text(code)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            
            Text(timing)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            FlightDetailsView(alignment: .leading,
                              place: "Los Angeles",
                              code: "LAS", timing: "30 Nov, 03:30")
        }
    }
}
