//
//  RegisterController.swift
//  TelaLoginCorrigida
//
//  Created by user208023 on 5/5/22.
//

import Foundation

class RegisterController {
    
    static let instance = RegisterController()
    
    var userList: [User] = []
    
    private init(){
        
    }
    
    func addUser(name: String, lastName: String, office: String, email: String, password: String) {
        let name = name
        let lastName = lastName
        let office = office
        let email = email
        let password = password
        
        if name != "" && lastName != "" && office != "" && email != "" && password != "" {
            userList.append(User.init(name: name, lastName: lastName, office: office, email: email, password: password))
        } else {
            print("Erro ao registrar!")
        }
    }
    
}
