//
//  ContentView2.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 15/03/24.
//

import SwiftUI

import SwiftUI

struct ContentView2: View {
    let items = (1...20).map { $0 }

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 10) {
                ForEach(items, id: \.self) { item in
                    Text("\(item)")
                        .frame(width: 100, height: 100)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView2()
}
