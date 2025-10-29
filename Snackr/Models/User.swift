//
//  User.swift
//  Snackr
//
//  Created by Vitor Quadros on 29/10/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
