//
//  LoginData.swift
//  ScreenLogin
//
//  Created by Alik Nigay on 29.10.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    var person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}
 
struct Person {
    var name: String
    let surname: String
    let phone: String
    let email: String
    let company: String
    let avatar: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alik", surname: "Nigay", phone: "+7(968)750-13-39", email: "Nigay_ao@bk.ru", company: "swiftbook.ru", avatar: "ava", image: "Dog")
    }
}
