//
//  ContactInformationView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import SwiftUI

struct ContactInformationView: View {
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 15) {
            
            InformationView()
            
            ContactView()
            
        }
        .padding(.top, 30)
    }
}

struct ContactInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView()
    }
}
