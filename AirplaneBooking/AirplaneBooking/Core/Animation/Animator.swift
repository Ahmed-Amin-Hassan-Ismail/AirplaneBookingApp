//
//  Animator.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import Foundation


class Animator: ObservableObject {
    
    
    // MARK: - PROPERTIES
    
    @Published var startAnimation: Bool = false
    @Published var planePosition: CGRect = .zero
    
    // MARK: - METHODS
    
    func buyATicker() {
        
        startAnimation.toggle()
    }
    
}
