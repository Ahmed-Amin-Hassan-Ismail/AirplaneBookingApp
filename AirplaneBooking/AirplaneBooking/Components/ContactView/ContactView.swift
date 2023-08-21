//
//  ContactView.swift
//  AirplaneBooking
//
//  Created by Ahmed Amin on 21/08/2023.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        
        VStack {
            
            VStack(alignment: .leading, spacing: 15) {
                ForEach(usersData) { user in
                    
                    HStack {
                        
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            
                            Text(user.email)
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        user.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                        
                    }
                }
                
                Text("Total Price")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(.top, 30)
                
                Text("$1,536.00")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            .padding(.horizontal)
            .padding(.top, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
          
        }
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
