//
//  SwiftUiMVVM.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 12/03/24.
//

import SwiftUI

struct TodoListItem : Identifiable {
    var id = UUID()
    var action: String
}

struct SwiftUiMVVM: View {
    var items: [TodoListItem] = [TodoListItem(action: "Get milk")]
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    Text(item.action)
                    
                }
                
            }
            .navigationTitle("TO DO LIST")
        }
        
        
    }
}

#Preview {
    SwiftUiMVVM()
}

