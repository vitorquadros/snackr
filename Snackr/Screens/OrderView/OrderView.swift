//
//  OrderView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { snack in
                            SnackListCell(snack: snack)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        SNButton(title: "$99 - Place Order")
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
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
