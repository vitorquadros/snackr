//
//  EmptyState.swift
//  Snackr
//
//  Created by Vitor Quadros on 29/10/25.
//

import SwiftUI

struct EmptyState: View {
    let text: String
    let image: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(text)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset(y: -50)
        }
       
    }
}

#Preview {
    EmptyState(
        text: "You haven't ordered anything yet",
        image: "empty-order"
    )
}
