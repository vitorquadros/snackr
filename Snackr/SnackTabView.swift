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
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    SnackTabView()
}
