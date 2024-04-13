//
//  EnumWithPickerView.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 01/04/24.
//

import SwiftUI
//If you want to use Swift Enum in a List or ForEach, you need to make your enum conforms to Identifiable protocol.
/**
 Identifiable provide a way to uniquely identify things. The protocol required us to return anything that could do just that.

 The return value must meet two criteria.

 It must be named id with a generic type ID.
 ID type must conform to the Hashable protocol.
 public protocol Identifiable<ID> {
     // 2
     associatedtype ID : Hashable

     // 1
     var id: Self.ID { get }
 }
 
 To make this enum conform to the Identifiable protocol. We add the Identifiable protocol and use self as the id.

 enum Direction: Identifiable {

     // 1
     var id: Self {

         return self
     }
     
     case north
     case south
     case east
     case west
 }
 */

enum FoodCategory : String,CaseIterable, Identifiable {
   
    
    case italian = "Italian"
    case chinese = "Chinese"
    case indian = "Indian"
    case american = "American"
    
    var id: Self {self}
}
struct EnumWithPickerView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    EnumWithPickerView()
}
