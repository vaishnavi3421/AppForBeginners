//
//  views in a loop.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 28/03/24.
//

import SwiftUI

struct views_in_a_loop: View {
    //Has an array of possible student names.
    let Students = ["Harry","Ron","Devid"]
    @State private var name = ""
    //Has an @State property storing the currently selected student.
    @State private var selectedName = "Harry"
    
    var body: some View {
//        Form {
//                    ForEach(0..<100) { number in
//                        Text("Row \(number)")
//                    }
//                }
        
        
        //Because ForEach passes in a closure, we can use shorthand syntax for the parameter name
//        Form {
//            ForEach(5..<100) {
//                Text("Row \($0)")
//            }
//        }
        NavigationStack {
            Form {
                //The Picker has a two-way binding to selectedStudent, which means it will start showing a selection of “Harry” but update the property when the user selects something else.
                Picker("Select your Student",selection: $selectedName){
                    //SwiftUI needs to be able to identify every view on the screen uniquely
                    //we need to tell SwiftUI how it can identify each item in our string array uniquely
                    //\.self, which means “the strings themselves are unique.”
                    ForEach(Students,id:\.self) {
                        Text($0)
                    }
                }
            }
        }
          
        
    }
}

#Preview {
    views_in_a_loop()
}
