//
//  ContentView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct SnackTabView: View {
    var body: some View {
        TabView {
            SnackListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
        }
    }
}

#Preview {
    SnackTabView()
}
