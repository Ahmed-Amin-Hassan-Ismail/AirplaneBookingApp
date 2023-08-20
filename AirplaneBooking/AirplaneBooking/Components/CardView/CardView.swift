//
//  CardView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    
    private let index: Int
    
    
    // MARK: - INIT
    
    init(index: Int) {
        self.index = index
    }
    
    // MARK: - BODY
    
    var body: some View {
        
        GeometryReader { geometryProxy in
            let size = geometryProxy.size
            let minY = geometryProxy.frame(in: .named("SCROLL")).minY
            let progress = minY / size.height
            let constrainedProgress = progress > 1 ? 1 : progress < 0 ? 0 : progress
            
            cardsData[index].image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: size.height)
                .shadow(color: .black.opacity(0.14),
                        radius: 8, x: 6, y: 6)                
                .rotation3DEffect(Angle(degrees: constrainedProgress * 40.0),
                                  axis: (x: 1 , y: 0, z: 0), anchor: .bottom)
                .padding(.top, (progress * -160.0))
                .offset(y: progress < 0 ? progress * 250 : 0)
        }
        .frame(height: 200)
        .zIndex(Double(cardsData.count - index))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(index: 0)
    }
}
