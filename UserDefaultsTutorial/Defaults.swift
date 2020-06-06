//
//  Defaults.swift
//  UserDefaultsTutorial
//
//  Created by Henry Calderon on 6/5/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import Foundation

struct Defaults {

    static let token = "token"
    static let tokenKey = "tokenKey"
    let storage = UserDefaults.standard

    struct Model {
        var token: String?

        init(token: String) {
          //complete the initializer
            self.token = token
        }
    }

    static var saveToken = { (token: String) in
        //complete the method
        UserDefaults.standard.set(token, forKey: tokenKey)
        
    }

//    static var getToken = { () -> Model in
    static var getToken = { () -> String? in
      //complete the method
        return UserDefaults.standard.string(forKey: tokenKey)
    }

    static func clearUserData(){
      //complete the method using removeObject
        UserDefaults.standard.removeObject(forKey: tokenKey)
    }
}
