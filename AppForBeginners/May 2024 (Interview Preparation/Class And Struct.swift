//
//  Class And Struct.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 13/05/24.
//

import Foundation
/**
 Class:- Reference Type
 Structure :- Value Type
 */

//Class :- Structure Type (like Google Sheet)
//         we can inherit it
//use :- inheritance , Reference type
class Car {
    var year: Int
    var make: String
    var color : String
    
    init(year: Int, make: String, color: String) {
        self.year = year
        self.make = make
        self.color = color
    }
    
}
 var myCar = Car(year: 2022, make: "porsache", color: "black")
var stolenCar = myCar
//print(myCar.color)
//stolenCar.color = "yellow"
//print(myCar.color)

//Structure :- Value Type
// use :- use in swiftUi , lightwaight , performant ,value Type
struct StructureCar {
    var year: Int
    var make: String
    var color : String
    
    
}
var myCar1 = StructureCar(year: 2022, make: "porsache", color: "black")
var stolenCar1 = myCar1
//print(myCar1.color)
//stolenCar1.color = "yellow"
//print(myCar1.color)

