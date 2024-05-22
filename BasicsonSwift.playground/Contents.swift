import UIKit

//var age = 31
//OOPS Concept
func printmessage() {
    print("Hello there")
}

printmessage()

func happyBirthday(name:String, age: Int) {
    print("Happy BIrthday \(name) and age is \(age)")
    
}
happyBirthday(name: "Vaish", age:65)
happyBirthday(name: "Anu", age:50)
happyBirthday(name: "Ramesh", age:89)

// make the func that takes 2 int , add them together and Print the result

func add(a: Int, b: Int) {
    print (a+b)
}
add(a: 54, b: 78)
//Return
func add1(a: Int, b: Int) -> Int{
    return (a+b)
}
var total = add1(a: 500, b: 978)
print(total)

//make function that takes 2 doubles ,multipless tham and return an int
func multyply(a: Double, b: Double) -> Int {
    return Int(a * b)
}
print(multyply(a: 56.7, b: 98.5))

// Classes
class Dog {
    var name = ""
    var age = 0
    var furColor = ""
}
var myDog = Dog()
myDog.age = 7
myDog.furColor = "Black"
myDog.name = "Fedo"
print(myDog.age)
print(myDog.furColor)
print(myDog.name)

var nabourDog = Dog()
nabourDog.age = 12
nabourDog.furColor = "green"
nabourDog.name = "Julii"
print(nabourDog.age)
print(nabourDog.furColor)
print(nabourDog.name)

//Create a class for something nearby you
// then create an instance of that object

class trollyBag {
    var size = ""
    var color = ""
    var noOfWheels = 0
}
var mybag = trollyBag()
mybag.size = "large"
mybag.color = "Grey"
mybag.noOfWheels = 2
print("******************************")
print(mybag.size)
print(mybag.color)
print(mybag.noOfWheels)

var roommatesBag = trollyBag()
roommatesBag.size = "large"
roommatesBag.color = "Green"
roommatesBag.noOfWheels = 4
print("******************************")
print(roommatesBag.size)
print(roommatesBag.color)
print(roommatesBag.noOfWheels)


//Methods
class Dog1 {
    var name = ""
    var age = 0
    var furColor = ""
    
    func bark() {
        print("Woof Woof")
    }
    func info() {
        print("This is \(name) and dog has \(furColor) furcolor and is \(age) years old")
    }
}
var myDog1 = Dog1()
myDog1.age = 7
myDog1.furColor = "Black"
myDog1.name = "Fedo"
print("***************************************")
print(myDog1.age)
print(myDog1.furColor)
print(myDog1.name)
myDog1.bark()
myDog1.info()

//Inheritance
class Animal {
    var age = 0
    var color = ""
    
    func speak() {
        print("skdjfwrkgvndfjgn")
    }
}
class Cat: Animal {
    override func speak() {
        print("meww meaaww")
        super.speak()
    }
}

var myCat = Cat()
myCat.age = 4
myCat.color = "White"
myCat.speak()
