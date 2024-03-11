//
//  ContentView.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentDate = Date()
    var body: some View {
       
        VStack {
            DatePicker("", selection: $currentDate, displayedComponents: [.date, .hourAndMinute])
                .labelsHidden()
        }
        
      
            
            
            
            
           
    }
}

#Preview {
    ContentView()
}
