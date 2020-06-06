//
//  UserDefaultsWrapper.swift
//  UserDefaultsTutorial
//
//  Created by Henry Calderon on 6/5/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import Foundation

private protocol AnyOptional{
    var isNil: Bool { get }
}

extension Optional: AnyOptional{
    var isNil: Bool { self == nil }
}

@propertyWrapper
struct UserDefaultsWrapper<T>{
    let key: String
    let defaultValue: T
    let userDefaults: UserDefaults = .standard
    
    var wrappedValue: T {
        get{
            //retrieve
            return userDefaults.object(forKey: key) as? T ?? defaultValue
        }set{
            //delete
            if let optional = newValue as? AnyOptional, optional.isNil{
                UserDefaults.standard.removeObject(forKey: key)
            }else{
                //save
                userDefaults.set(newValue, forKey: key)
            }
            
        }
    }
}
