//
//  DetailHeaderView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct DetailHeaderView: View {
    
    // MARK: - PROPERTIES
    
    private let size: CGSize
    private let safeArea: EdgeInsets
    
    // MARK: - INIT
    
    init(size: CGSize, safeArea: EdgeInsets) {
        
        self.size = size
        self.safeArea = safeArea
    }
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            submittedOrder
            
            flightDetailsView
        }
        .padding(.horizontal, 35)
        .padding(.top, safeArea.top + 15)
        .padding(.bottom, 15)
        .background(
            Rectangle()
                .fill(Color.topBlue)
                .padding(.bottom, 80)
        )
    }
}

// MARK: - SETUP VIEW

extension DetailHeaderView {
    
    private var submittedOrder: some View {
        
        VStack {
            Image.logo
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            
            Text("Your order has submitted")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.top, 10)
            
            Text("We are waiting for booking confirmation")
                .font(.caption)
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 30)
        .padding(.bottom, 40)
        .background(
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.white.opacity(0.5))
        )
    }
    
    private var flightDetailsView: some View {
        HStack {
            
            FlightDetailsView(alignment: .leading, place: "Los Angeles", code: "LAS", timing: "23 Nov, 03:30")
            
            flightDetailsTimeHours()
            
            FlightDetailsView(alignment: .trailing, place: "New York", code: "NYC", timing: "23 Nov, 07:15")
            
        }
        .padding(20)
        .padding(.bottom, 70)
        .background(
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.ultraThinMaterial)
        )
        .padding(.top, -20)
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
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(size: UIScreen.main.bounds.size, safeArea: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0 ))
    }
}
