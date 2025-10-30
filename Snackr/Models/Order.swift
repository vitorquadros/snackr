//
//  Order.swift
//  Snackr
//
//  Created by Vitor Quadros on 30/10/25.
//

import SwiftUI
import Combine

final class Order: ObservableObject {
    @Published var items: [Snack] = []
    
    var totalPrice: Double {
       return items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ snack: Snack) {
        items.append(snack)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

}
