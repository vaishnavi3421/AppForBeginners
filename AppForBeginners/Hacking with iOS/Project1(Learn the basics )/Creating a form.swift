//
//  Creating a form.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 28/03/24.
//

import SwiftUI

struct Creating_a_form: View {
    var body: some View {
        NavigationStack {
            Form{
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
            }
            .navigationTitle("SwiftUi")
            //we can get a small font by adding another modifier:
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Creating_a_form()
}
