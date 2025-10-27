//
//  XDismissButton.swift
//  Snackr
//
//  Created by Vitor Quadros on 27/10/25.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 36, height: 36)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .frame(width: 44, height: 44)
                .imageScale(.small)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
