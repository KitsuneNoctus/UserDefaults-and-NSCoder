//
//  UserDefaultsConfig.swift
//  UserDefaultsTutorial
//
//  Created by Henry Calderon on 6/5/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import Foundation

struct SettingsStruct{
    @UserDefaultsWrapper(key: "preferredLanguage", defaultValue: "SP")
    static var preferredLanguage: String
    
    @UserDefaultsWrapper(key: "darkMode", defaultValue: false)
    static var darkMode: Bool
}
