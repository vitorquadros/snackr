//
//  Snack.swift
//  Snackr
//
//  Created by Vitor Quadros on 15/10/25.
//

import Foundation

struct Snack: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

nonisolated struct SnackResponse: Decodable {
    let request: [Snack]
}

struct MockData {
    static let sampleSnack = Snack(
        id: 1,
        name: "Test Snack",
        description: "This is the description for the sample Snack.",
        price: 9.99,
        imageURL: "https://images.unsplash.com/photo-1549320719-b97a0b5b8294?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1470",
        calories: 100,
        protein: 10,
        carbs: 20
    )
    
    static let sampleSnacksList = [sampleSnack, sampleSnack, sampleSnack, sampleSnack]
}
