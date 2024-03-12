//
//  LoginScreenUI.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 11/03/24.
//

import SwiftUI

struct LoginScreenUI: View {
    @State private var username = ""
    @State private var password = ""
    @State private var WrongUsername = 0
    @State private var WrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .bold()
                        .font(.largeTitle)
                    TextField("Username", text:$username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.15))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text:$password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.15))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                    
                    NavigationLink(destination: Text("you are logged in @\(username)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                    
                }
            }
        }.navigationBarHidden(true)
        
    }
    
    func authenticateUser(username:String, password:String) {
        if username.lowercased() == "vaish123" {
            WrongUsername = 0
            if password.lowercased() == "abc123" {
                WrongPassword = 0
                showingLoginScreen = true
            } else {
                WrongPassword = 2
            }
        } else {
            WrongUsername = 2
        }
        
        
    }
    
    
}

#Preview {
    LoginScreenUI()
}
