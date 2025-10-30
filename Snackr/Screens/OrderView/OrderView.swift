//
//  OrderView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { snack in
                            SnackListCell(snack: snack)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        SNButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 20)
                }
                
                if orderItems.isEmpty {
                    EmptyState(
                        text: "You have no items in your order.",
                        image: "empty-order")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
}

#Preview {
    OrderView()
}
