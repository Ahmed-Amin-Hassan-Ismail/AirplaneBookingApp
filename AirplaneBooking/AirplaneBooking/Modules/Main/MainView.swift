//
//  MainView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 20/08/2023.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Body
    
    var body: some View {
        
        GeometryReader { geometryProxy in
            
            let size = geometryProxy.size
            let safeArea = geometryProxy.safeAreaInsets
            
            HomeView(size: size, safeArea: safeArea)
                .ignoresSafeArea(.container, edges: .vertical)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
