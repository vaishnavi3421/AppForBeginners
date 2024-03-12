//
//  NavigationVIew.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 12/03/24.
//

import SwiftUI

struct NavigationViewExample: View {
    var body: some View {
        NavigationView {
            Screen(title: "Home Screen", text: "First Screen", imageName: "house")
        }
    }
}

struct Screen: View {
    
    let title : String
    let text: String
    let imageName : String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
            Text(text)
                .font(.system(size: 30,weight: .light,design: .default))
            
            NavigationLink(destination: Screen(title: "Second Screen", text: "notification", imageName: "bell"), label: {
                continueButton()
            })
            
        }
        .navigationTitle(title)
    }
    
}
struct continueButton: View {
    var body: some View {
        Text("Continue")
            .font(.title)
            .bold()
            .frame(width: 200,height: 50,alignment: .center)
            .foregroundColor(.white)
            .background(Color.blue)
            .padding()
    }
}

#Preview {
    NavigationViewExample()
}
