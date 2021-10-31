//
//  LoginModel.swift
//  ScreenLogin
//
//  Created by Alik Nigay on 29.10.2021.
//

import Foundation

class Users {
    
    var storageUsers = [
        User(login: "User", password: "123456", name: "Tom", surName: "Chook", phone: 89997777777, email: "e@apple.com", company: "Apple", avatar: "ava", image: "Dog")
    ]
    
    func searchUser(neededLogin: String) -> User {
        var user = User()
        
        for item in storageUsers {
            if item.login == neededLogin {
                user = item
                break
            }
        }
        return user
    }
}
