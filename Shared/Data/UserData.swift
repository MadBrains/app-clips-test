//
//  UserData.swift
//  MyApp
//
//  Created by Valery Shamshin on 26.01.2022.
//

import Foundation

struct UserData {
    static var orders: [Order] {
        get {
            guard let sharedUserDefaults = UserDefaults(suiteName: "group.clipGroup"),
                  let data = sharedUserDefaults.value(forKey: "orders") as? Data else {
                return []
            }
            
            let decoder = JSONDecoder()
            if let objectsDecoded = try? decoder.decode(Array.self, from: data) as [Order] {
                return objectsDecoded
            } else {
                return []
            }
        }
        
        set {
            guard let userDefaults = UserDefaults(suiteName: "group.clipGroup") else {
                return
            }
            
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(newValue) {
                userDefaults.set(data, forKey: "orders")
            }
        }
    }
}
