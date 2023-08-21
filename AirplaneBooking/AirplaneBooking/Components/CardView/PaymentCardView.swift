//
//  PaymentCardView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct PaymentCardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var offsetY: CGFloat = 0
    @State private var currentIndex: CGFloat = 0
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Text("select payment method".uppercased())
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(.vertical)
            
            GeometryReader { geometryProxy in
                VStack {
                    ForEach(cardsData.indices, id: \.self) { index in
                        CardView(index: index)
                    }
                }
                .padding(.horizontal, 30)
                .offset(y: offsetY)
                .offset(y: currentIndex * -200.0)
            }
            .coordinateSpace(name: Constant.coordinateScrollSpace)
        }
        .background(Color.white.ignoresSafeArea())
        .contentShape(Rectangle())
        .gesture(
            DragGesture()
                .onChanged({ value in
                    
                    offsetY = value.translation.height * 0.3
                })
                .onEnded({ value in
                    let translation = value.translation.height
                    
                    withAnimation(.easeInOut) {
                        
                        if translation > 0 &&
                            translation > 100 &&
                            currentIndex > 0 {
                            currentIndex -= 1
                        }
                        
                        if translation < 0 &&
                            -translation > 100 &&
                            currentIndex < CGFloat(cardsData.count - 1) {
                            currentIndex += 1
                        }
                        
                        offsetY = .zero
                    }
                })
        )
    }
}

struct PaymentCardView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCardView()
    }
}
