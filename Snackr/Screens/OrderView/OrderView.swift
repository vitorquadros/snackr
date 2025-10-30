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
    
    var sum: String {
       let sum = order.items.reduce(0) { $0 + $1.price }
       return String(format: "$%.2f", sum)
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { snack in
                            SnackListCell(snack: snack)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        SNButton(title: "\(sum) - Place Order")
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
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
