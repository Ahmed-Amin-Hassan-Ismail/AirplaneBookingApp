//
//  HomeView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - PROPERTIES
    
    @StateObject private var animator = Animator()
    
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
            
            FlightHeaderView(size: size, safeArea: safeArea)
                .zIndex(1)
                .rotation3DEffect(Angle(degrees: animator.startAnimation ? 90 : 0), axis: (x: 1, y: 0, z: 0))
            
            PaymentCardView()
                .zIndex(0)
            
            addPurchasseButton()
        }
        .overlayPreferenceValue(RectKey.self) { value in
            if let anchor = value[Constant.planeBounds] {
                addPlaneImageView(anchor: anchor)
            }
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
            
            withAnimation(.easeInOut(duration: 0.85)) {
                
                animator.buyATicker()
            }
            
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
    
    private func addPlaneImageView(anchor: Anchor<CGRect>) -> some View {
        GeometryReader { geometryProxy in
            let rect = geometryProxy[anchor]
            let planePosition = animator.planePosition
            Image.airplane
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 30)
                .padding(.bottom, -20)
                .frame(height: 160)
                .frame(width: planePosition.width, height: planePosition.height)
                .offset(x: planePosition.minX, y: planePosition.minY)
                .onAppear {
                    animator.planePosition = rect
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
