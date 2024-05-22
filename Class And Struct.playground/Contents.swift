import UIKit
//Class :- Structure Type (like Google Sheet)
//use :- inheritance , Reference type
var greeting = "Hello, playground"
print(greeting)
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
print(myCar.color)
stolenCar.color = "yellow"
print(myCar.color)

//Structure :- Value Type
      //      LightWeight and Performant
// use :- use in swiftUi , lightwaight , performant ,value Type
struct StructureCar {
    var year: Int
    var make: String
    var color : String
    
    
}
var myCar1 = StructureCar(year: 2022, make: "porsache", color: "black")
var stolenCar1 = myCar1
print(myCar1.color)
stolenCar1.color = "yellow"
print(myCar1.color)
//********************************************************************************
//Generis
//Elimenate Code Duplication by creating  general Solution that can handle a various types.
// Use in network Calling
func dhv<T: Comparable>(valueOne: T , valueTwo: T) {
    let higherValue = valueOne > valueTwo ? valueOne : valueTwo
    print("\(higherValue) is the higher value ")
}
dhv(valueOne: Date.now, valueTwo: Date.distantFuture)
//*******************************************************************************
//Closure
/*parameter -> return Type {
    Statement
}
*/
//***********************************************************************************************
/*
 */
