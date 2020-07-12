//
//  ErrorHandling.swift
//  IOSConceptsUsinSwift
//
//  Created by Mohan Chandrasekar  on 2020-07-12.
//  Copyright © 2020 Mohan Chandrasekar . All rights reserved.
//

import Foundation


enum LoginValidationError: String, Error {
    case inValidEmail = "Invalid Email Address"
    case inValidPassword = "Invalid Password"
    case inValidEmailAndPass = "Invalid Email and password"
    case emptyEmail = "EmptyEmail"
    case emptyPassword = "Empty password"
    case someThingWrongWithLogin = "Something Wrong with Login Please check email and password"
}

class LoginHelper{
    
    func login(email: String?, password: String?) throws {
        guard email != nil else{
            throw LoginValidationError.emptyEmail
        }
        guard (email?.contains("@"))! else{
            throw LoginValidationError.inValidPassword
        }
        guard password!.count > 6 else{
            throw LoginValidationError.inValidPassword
        }
        guard let password = password else {
            throw LoginValidationError.emptyPassword
        }
        guard (email?.contains("@"))! && password.count > 6 else{
            throw LoginValidationError.someThingWrongWithLogin
        }
        //Manange Network call
        print("Login Succesfully")
    }
}

// call this function in main
func callForLogin() {
    let login = LoginHelper()
    do{
        try login.login(email: nil, password: nil)
    }catch let errot{
        print(errot)
    }
}
