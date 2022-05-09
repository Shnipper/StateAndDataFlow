//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

class UserManager: ObservableObject {
    
    @AppStorage("username") var username: String?
    
    func saveUser(name: String) {
        username = name
    }
    
    func checkUser() -> Bool {
        if let _ = username {
            return true
        }
        return false
    }
    
    func getUser() -> String {
        if let name = username {
            return name
        } else {
            return ""
        }
    }
    
    func logOff() {
        username = nil
    }
}
