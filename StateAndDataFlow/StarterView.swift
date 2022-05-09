//
//  StarterVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if user.checkUser() {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterVIew_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
