//
//  AccountViewModel.swift
//  Snackr
//
//  Created by Vitor Quadros on 27/10/25.
//

import Foundation
import Combine

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    
    @Published var extraNapkins = false
    @Published var frequentRefills = false
}
