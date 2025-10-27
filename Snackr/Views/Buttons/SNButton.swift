//
//  SNButton.swift
//  Snackr
//
//  Created by Vitor Quadros on 27/10/25.
//

import SwiftUI

struct SNButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}
    #Preview {
        SNButton(title: "Order now")
    }
