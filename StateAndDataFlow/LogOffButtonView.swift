//
//  LogOffButtonView.swift
//  StateAndDataFlow
//
//  Created by Евгений Волошенко on 09.05.2022.
//

import SwiftUI

struct LogOffButton: View {
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: { user.logOff() }) {
            Text("LogOff")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}
