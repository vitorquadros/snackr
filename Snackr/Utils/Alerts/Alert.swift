//
//  Alert.swift
//  Snackr
//
//  Created by Vitor Quadros on 20/10/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("The server could not be found. Please try again later."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from the server. Please try again later."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please try again later."),
                                       dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please try again later."),
                                            dismissButton: .default(Text("OK")))
}
