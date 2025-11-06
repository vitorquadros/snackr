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
    
    // MARK: - Network Errors
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
    
    // MARK: - Account Errors
    static let invalidEmail    = AlertItem(title: Text("Invalid Email"),
                                           message: Text("Please enter a valid email address."),
                                           dismissButton: .default(Text("OK")))
    
    static let emptyFields     = AlertItem(title: Text("Empty Fields"),
                                           message: Text("Please fill in all fields."),
                                           dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Success"),
                                            message: Text("Your profile was successfully updated."),
                                            dismissButton: .default(Text("OK")))
    
    static let userSaveFailed  = AlertItem(title: Text("Error"),
                                            message: Text("There was an error saving your profile. Please try again later."),
                                            dismissButton: .default(Text("OK")))
    
    static let userRetrieveFailed  = AlertItem(title: Text("Error"),
                                            message: Text("There was an error retrieving your profile. Please try again later."),
                                            dismissButton: .default(Text("OK")))
    
    static let genericError     = AlertItem(title: Text("Error"),
                                            message: Text("There was an error. Please try again later."),
                                            dismissButton: .default(Text("OK")))
}
