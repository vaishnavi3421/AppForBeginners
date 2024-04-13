//
//  ScrollViewBootcamp.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 22/03/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        //        ScrollView(.vertical, showsIndicators: true, content: {
        //            VStack{
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .fill(Color.red)
        //                        .frame(height: 300)
        //
        //                }
        //
        //
        //            }
        //        })
        //        ScrollView(.horizontal, showsIndicators: true, content: {
        //            HStack{
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .fill(Color.red)
        //                        .frame(width:300, height: 300)
        //
        //                }
        //
        //
        //            }
        //        })
        
        ScrollView{
            LazyVStack{
                ForEach(0..<50){ index in
                    ScrollView(.horizontal,showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<50){ index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                            
                            
                        }
                    })
                }
                
            }
        }
    }
}
        
        
        
        
        #Preview {
            ScrollViewBootcamp()
        }
    
