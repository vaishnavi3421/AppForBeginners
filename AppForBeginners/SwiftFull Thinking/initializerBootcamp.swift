//
//  initializerBootcamp.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 20/03/24.
//

import SwiftUI

struct initializerBootcamp: View {
    let backgroundColor:Color
    let count:Int
    let title:String
    
    init(backgroundColor: Color, count: Int, title: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.title = title
    }
        //for the custom init
    
    
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.headline)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
               
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}

#Preview {
    initializerBootcamp(backgroundColor: .green, count: 56, title: "oranges")
}
