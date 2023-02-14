//
//  User.swift
//  LogApp
//
//  Created by user on 14.02.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    static func getUserData() -> User {
        User(login: "1", password: "1")
    }
}


