//
//  ForEachBootcamp.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 22/03/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data:[String] = ["Vaish","Rani","Om","Prem","Radha"]
    let myString: String = "Hello"
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                //Text("Hi:\(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is \(index)")
//                }
//            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]):= \(index)")
                
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
