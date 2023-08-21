//
//  HomeView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - PROPERTIES
    
    private let size: CGSize
    private let safeArea: EdgeInsets
    
    
    // MARK: - INIT
    
    init(size: CGSize, safeArea: EdgeInsets) {
        
        self.size = size
        self.safeArea = safeArea
    }
    
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            FlightHeaderView(size: size, safeArea: safeArea)
                .zIndex(1)
            
            PaymentCardView()
                .zIndex(0)
            
            addPurchasseButton()
        }
    }
}

// MARK: - SETUP VIEW

extension HomeView {
    
    private func addPurchasseButton() -> some View {
        
        Rectangle()
            .fill(
                LinearGradient(colors: [
                    .white.opacity(0.3),
                    .white.opacity(0.7),
                    
                ], startPoint: .top, endPoint: .bottom)
            )
            .padding(.top, 50)
            .overlay(setupButtonView(), alignment: .bottom)
    }
    
    private func setupButtonView() -> some View {
        
        Button {
            
        } label: {
            
            Text("Confirm $1,536.00")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .background(Color.topBlue.gradient)
                .clipShape(Capsule())
                .padding(.bottom, 20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
