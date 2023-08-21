//
//  InformationView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import SwiftUI

struct InformationView: View {
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            ForEach(informationData) { information in
                
                Spacer()
                
                VStack(spacing: 4) {
                    Text(information.title)
                        .font(.caption2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    
                    Text(information.subtitle)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
        }        
        .frame(maxWidth: .infinity)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
