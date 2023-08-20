//
//  FlightHeaderView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct FlightHeaderView: View {
    
    // MARK: - PROPERTIES
    
    private let size: CGSize
    private let safeArea: EdgeInsets
    
    private let linearGradients = LinearGradient(
        colors: [Color.bottomBlue,  Color.bottomBlue, Color.topBlue],
        startPoint: .top, endPoint: .bottom)
    
    
    // MARK: - INIT
    
    init(size: CGSize, safeArea: EdgeInsets) {
        
        self.size = size
        self.safeArea = safeArea
    }
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            
            logoView
            
            flightDetailsView
            
            airplaneImageView
        }
        .padding(15)
        .padding([.top, .horizontal], safeArea.top)
        .background(
            Rectangle()
                .fill(linearGradients)
        )
    }
}

// MARK: - SETUP VIEW

extension FlightHeaderView {
    
    private var logoView: some View {
        Image.logo
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size.width * 0.4)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var flightDetailsView: some View {
        HStack {
            FlightDetailsView(alignment: .leading, place: "Los Angeles", code: "LAS", timing: "23 Nov, 03:30")
            
            flightDetailsTimeHours()
            
            FlightDetailsView(alignment: .trailing, place: "New York", code: "NYC", timing: "23 Nov, 07:15")
            
        }
        .padding(.top, 20)
    }
    
    private func flightDetailsTimeHours() -> some View {
        VStack(spacing: 8) {
            
            Image.rightArrow
                .font(.title2)
            
            Text("5h 15m")
        }
        .font(.body)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        
    }
    
    private var airplaneImageView: some View {
        Image.airplane
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 160)
            .padding(.bottom, -20)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FlightHeaderView(size: UIScreen.main.bounds.size, safeArea: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}
