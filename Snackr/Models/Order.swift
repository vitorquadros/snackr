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
    
    func add(_ snack: Snack) {
        items.append(snack)
    }
}
