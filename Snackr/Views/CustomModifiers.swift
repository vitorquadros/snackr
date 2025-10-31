//
//  CustomModifiers.swift
//  Snackr
//
//  Created by Vitor Quadros on 30/10/25.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
