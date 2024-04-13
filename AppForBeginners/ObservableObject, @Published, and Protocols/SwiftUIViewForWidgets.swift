//
//  Price.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 03/04/24.
//

import SwiftUI

struct SwiftUIViewForWidgets: View {
    
    var body: some View {
           ZStack {
               Color(red: 46/255, green: 50/255, blue: 71/255)
               HStack {
                   VStack {
                       Text("Hello Ayush!")
                           .font(Font.custom("Poppins-Medium", size: 16))
                           .foregroundColor(.white)
                       Text("You have been attack free")
                           .font(Font.custom("Lato-Regular", size: 12))
                           .foregroundColor(.white)
                       HStack(alignment: .firstTextBaseline, spacing: 0) {
                           Text("20")
                               .font(Font.custom("Poppins-Medium", size: 24))
                               .foregroundColor(.white)
                           Text("days")
                               .font(Font.custom("Poppins-Medium", size: 12))
                               .foregroundColor(.white)
                       }
                       Button(action: {}) {
                           Text("Record an attack")
                               .font(Font.custom("Poppins-Medium", fixedSize: 12))
                               .foregroundColor(.white)
                       }
                       .padding(.all)
                       .background(Color(red: 98/255, green: 103/255, blue: 200/255))
                       .cornerRadius(16)
                   }
                   Image("MigraineFreeWoman")
                       .renderingMode(.original)
                       .resizable()
                       .aspectRatio(contentMode: .fit)
               }
               .frame(
                   maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .trailing
               )
           }
       }
   }

    
    
    
    
    
    
    
    

#Preview {
    SwiftUIViewForWidgets()
}
