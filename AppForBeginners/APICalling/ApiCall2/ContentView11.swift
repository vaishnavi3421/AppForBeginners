//
//  ContentView11.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 19/03/24.
//

import SwiftUI


class ViewModel:ObservableObject {
    func fetch() {
        guard let url = URL(string:"https://iosacademy.io/api/v1/courses/index.php") else {
            return
        }
        
    }
}

struct ContentView11: View {
    var body: some View {
        NavigationView {
            List{
                
            }
            .navigationTitle("Courses")
        }
        
    }
}

#Preview {
    ContentView11()
}
