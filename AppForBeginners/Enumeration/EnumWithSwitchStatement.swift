//
//  EnumWithSwitchStatement.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 01/04/24.
//

import SwiftUI

enum CompassPoint {
    case north
    case south
    case east
    case west
    
}
struct EnumWithSwitchStatement: View {
    var direction = CompassPoint.east
    var body: some View {
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            Text("You will reach your destination Soon")
                .bold()
                .padding()
            
            switch direction {
            case .north:
                Text("Heading North")
            case .south:
                Text("Heading South")
            case .east:
                Text("Heading east")
            case .west:
                Text("Heading West")
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    EnumWithSwitchStatement()
}
