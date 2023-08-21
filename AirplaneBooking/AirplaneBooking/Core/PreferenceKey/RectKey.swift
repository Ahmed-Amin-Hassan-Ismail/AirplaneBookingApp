//
//  RectKey.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import SwiftUI


struct RectKey: PreferenceKey {
    
    static var defaultValue: [String : Anchor<CGRect>] = [:]
    
    static func reduce(value: inout [String : Anchor<CGRect>], nextValue: () -> [String : Anchor<CGRect>]) {
        value.merge(nextValue()) { $1 }
    }
}
