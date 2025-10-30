//
//  SnackrApp.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

@main
struct SnackrApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            SnackTabView()
                .environmentObject(order)
        }
    }
}
