//
//  OrderView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MockData.orderItems) { snack in
                        SnackListCell(snack: snack)
                    }
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                
                Button {
                    
                } label: {
                    SNButton(title: "$99 - Place Order")
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
