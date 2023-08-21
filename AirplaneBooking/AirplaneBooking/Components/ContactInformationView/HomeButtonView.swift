//
//  HomeButtonView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import SwiftUI

struct HomeButtonView: View {
    
    // MARK: - PROPERTIES
    
    private let safeArea: EdgeInsets
    
    
    // MARK: - INIT
    
    init(safeArea: EdgeInsets) {
        
        self.safeArea = safeArea
    }
    
    
    var body: some View {
        
        Button {
            
            
        } label: {
            
            Text("Go to Home Screen")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .background(
                    Capsule()
                        .fill(Color.topBlue.gradient)
                )
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, safeArea.bottom)
        }
        
    }
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView(safeArea: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}
