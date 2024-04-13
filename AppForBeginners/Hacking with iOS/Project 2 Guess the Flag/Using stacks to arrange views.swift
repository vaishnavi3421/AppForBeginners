//
//  Using stacks to arrange views.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 29/03/24.
//

import SwiftUI

struct Using_stacks_to_arrange_views: View {
    var body: some View {
        //VStack places some automatic amount of spacing between the two views,
        // eg.(spacing: 20)
        VStack(alignment:.trailing) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            Text("Vaish")
            }
            .padding()
    }
}

#Preview {
    Using_stacks_to_arrange_views()
}
