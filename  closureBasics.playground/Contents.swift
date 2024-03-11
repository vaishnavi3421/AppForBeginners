import UIKit

var greeting = "Hello, playground"
var str = " hello playground"
var age = 32
//variable info store karata hai
//function :- set of instruction ko exicute kaarata hai.
func someFunctions() -> String {
    return "Alex"
}
print(someFunctions())
// ek variable ko assign karenge block of code ko
//it is nothing but Closure
//it is nothing but block of code which you can assign to a variable
var getName = {
     return " Hey, Alex"
}
print(getName())
// Syntax
// function
//func name(parameter) -> {returnType} {
//    body of the function
//}
//closure
//{(parameter) -> (Returntype) in
//    body of our closure
//}

func printName() {
     print("Helo world")
}
print(printName())

var printNameInClosure = {() -> () in
    //body
    print("Hello using closure")
}
print(printNameInClosure())
// instead of this you can write
var printNameInClosure1 = {
    //body
    print("Hello using closure")
}
print(printNameInClosure1())

//Types
func printNameWithString (name: String) {
    print ("Hello \(name)")
}
print(printNameWithString(name: "Vaishnavi"))

//function type String -> void

var printVarForOurFunction:(String) ->() = printNameWithString
printVarForOurFunction("Vaish")
//*****************
var printVarForOurClosurewithString:(String) ->() = {
    (name)->() in
    //Body
    print("Hello \(name)")
}
printVarForOurClosurewithString("Vaishu")
//Closure With parameters
func appendTwoString(n1:String, n2:String) -> String {
    return "\(n1) and \(n2) Welcome"
}
print(appendTwoString(n1: "Alice", n2:"Harry"))

var appendTwoStringWithclosure:(String,String) -> String = {
    (n1,n2)-> String in
    return "Welcome \(n1) and \(n2) with closure "
}
print(appendTwoStringWithclosure("Alice","Harry"))

//Examples
func myFunction(myClosure:()->()) {
    print("function invoked")
    myClosure()
}
//**
//it is just a statment
myFunction(myClosure: {
    print("Closure is invoked")
})
//Trailing Closure

func myFunction(withMessage:String, myClosure:()->()) {
    print(withMessage)
    myClosure()
    print("function Ended")
}
//Syntax
//how can we call the closure outside the function
myFunction(withMessage: "hellooo") {
    print("Hello ffrom Closure")
}
//without Trailing closure
myFunction(withMessage: "hellooo message", myClosure: {print("Hello from Closure")})

//Autoclosure
//@Escaping Closure
//A closure is said to escape a function when the closure is passsed as an argument to the function, but is called afteer the function returns.

class DownloadManager {
    
    var onDownloadDone:((String)->())?
    func downloadStart(completionHandler:@escaping (String)-> ()) {
        onDownloadDone = completionHandler
        
        DispatchQueue.main.asyncAfter (wallDeadline: .now() + 3) {
            self.downlodFinished()
        }
    }
    func downlodFinished() {
        onDownloadDone?("received Data")
    }
}


