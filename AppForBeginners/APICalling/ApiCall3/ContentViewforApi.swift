//
//  ContentViewforApi.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 27/03/24.
//

import SwiftUI

struct ContentViewforApi: View {
    @ObservedObject var datas = ReadData()
        
    var body: some View {
        List(datas.users){ user in
            
            VStack(alignment: .leading) {
                
                Text(user.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.gray)
                    
                HStack{
                    Text(user.designation)
                        .font(.title3)
                        .foregroundColor(Color.red)
                        
                    Spacer()
                    Text(user.email)
                        .font(.title3)
                }
            }
        }
    }
}

#Preview {
    ContentViewforApi()
}
