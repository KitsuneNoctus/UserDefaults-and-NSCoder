//
//  ViewController.swift
//  UserDefaultsTutorial
//
//  Created by Henry Calderon on 6/5/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var person = Person(name: "Bill", favoriteColor: .brown)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let encoder = JSONEncoder()
        if let encodedPerson = try? encoder.encode(person){
            UserDefaults.standard.set(encodedPerson, forKey: "Bill")
        }
        
        let peron = UserDefaults.standard.data(forKey: "Bill")
        let decoder = JSONDecoder()
        if let decodePerson = try? decoder.decode(Person.self, from: peron!){
            print("\(decodePerson.name)  \(decodePerson.favoriteColor)")
        }
        
        SettingsStruct.darkMode = true
        print(SettingsStruct.darkMode)
        
        SettingsStruct.preferredLanguage = "ZH"
        print(SettingsStruct.preferredLanguage)
    }


}

