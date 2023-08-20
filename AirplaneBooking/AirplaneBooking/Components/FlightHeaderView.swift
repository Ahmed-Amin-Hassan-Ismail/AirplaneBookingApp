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
    
    
    
    var body: some View {
        
        VStack {
            Image.logo
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size.width * 0.4)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(15)
        .padding(.top, safeArea.top)
        .background(
            Rectangle()
                .fill(linearGradients)
        )
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FlightHeaderView(size: UIScreen.main.bounds.size, safeArea: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}
