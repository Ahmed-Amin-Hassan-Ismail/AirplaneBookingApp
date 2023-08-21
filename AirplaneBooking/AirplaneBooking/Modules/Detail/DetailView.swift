//
//  DetailView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct DetailView: View {
    
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
        
        VStack {
            
            DetailHeaderView(size: size, safeArea: safeArea)
            
            ContactInformationView()
            
            HomeButtonView(safeArea: safeArea)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
