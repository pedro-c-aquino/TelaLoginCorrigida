//
//  HomeController.swift
//  TelaLoginCorrigida
//
//  Created by user208023 on 5/5/22.
//

import Foundation

class HomeController {
    
//    let registerController = RegisterController()
    
    func validateHome(email: String, password: String, sender: Void) {
        
        let email = email
        let password = password
        let sender: Void = sender
        
        for user in RegisterController.instance.userList {
            if user.email == email && user.password == password {
                sender
            } else {
                print("Usuário não encontrado")
            }
        }
    }
}
