//
//  modifing a program state.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 28/03/24.
//

import SwiftUI

struct modifing_a_program_state: View {
    //@State allows us to work around the limitation of structs: we know we can’t change their properties because structs are fixed, but @State allows that value to be stored separately by SwiftUI in a place that can be modified.
    //@State is specifically designed for simple properties that are stored in one view. As a result, Apple recommends we add private access control to those properties, like this: @State private var tapCount = 0.
    

    @State private var tapcount = 0
    var body: some View {
        Button("Tap Count : \(tapcount)") {
            tapcount += 1
        }
        
    }
}

#Preview {
    modifing_a_program_state()
}
