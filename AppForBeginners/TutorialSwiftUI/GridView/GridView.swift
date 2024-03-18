//
//  GridView.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 15/03/24.
//

import SwiftUI

struct GridView: View {
    let column:[GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())
                           ]
    //.fixed /.flexible / .adaptive
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 350)
            LazyVGrid(columns: column)  {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 100)
                }
            }
            
            
        }
    }
}

#Preview {
    GridView()
}
