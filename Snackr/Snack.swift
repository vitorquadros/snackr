//
//  Snack.swift
//  Snackr
//
//  Created by Vitor Quadros on 15/10/25.
//

import Foundation

struct Snack: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct SnackResponse {
    let request: [Snack]
}

struct MockData {
    static let sampleSnack = Snack(
        id: 1,
        name: "Test Snack",
        description: "This is the description for the sample Snack.",
        price: 9.99,
        imageURL: "https://unsplash.com/photos/RZ-AHtxLPUE",
        calories: 100,
        protein: 10,
        carbs: 20
    )
    
    static let sampleSnacksList = [sampleSnack, sampleSnack, sampleSnack, sampleSnack]
}
