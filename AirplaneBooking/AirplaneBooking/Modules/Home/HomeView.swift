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
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
