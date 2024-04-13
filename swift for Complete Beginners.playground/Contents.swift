import UIKit

var greeting = "Hello, playground"
//Code with functions
//let roll = Int.random(in: 1...20)
let no = 139
if no.isMultiple(of: 2) {
    print("Even")
}
else {
    print("Odd")
}

func printTimeTable(no:Int, end: Int) {
    for i in 1...end {
       print ("\(i) * \(no) is \(i * no)")
    }
}
printTimeTable(no: 7, end: 20)

//return values from the function
let root = sqrt(169)
print(root)

func letterIdentical(Str1: String,Str2: String) -> Bool {
    let first = Str1.sorted()
    let second = Str2.sorted()
    return first == second
    
    
}
// Touple
func getUser() -> (Firstname: String, LastName: String) {
    (Firstname : "Ram", LastName : "Shame")
}
//let (Firstname, Lastname) = getUser()
let (Firstname, _) = getUser()
print("Name :- \(Firstname) ")

//How to customise parameter label
//Closure
//NOrmal function
func greetUser() {
    print("Hello World")
}
greetUser()
var newuser = greetUser
newuser()

let seyHello = {
    print("say hello")
}
seyHello()
// in :- end the return and and start the actual body of the funcctions

let sayHello = { (name:String) -> String in
    "Hi \(name)"
}
sayHello("Vaish")
/////////////////////////////////////////////
let team = ["Vaish","Raj","Om","Sam","Deep","Shan"]
let sortedTeam = team.sorted()
print(sortedTeam)

//func CaptionFirstSorted(name1:String , name2:String) -> Bool {
//    if name1 == "Vaish"{
//        return true
//    }
//    else if name2 == "Vaish" {
//        return false
//    }
//    return name1 < name2
//}

//let CaptionFirstTeam = team.sorted(by: CaptionFirstSorted)
//print(CaptionFirstTeam)

//Inline Closure
let CaptionFirstTeam = team.sorted(by: { (name1:String , name2:String) -> Bool in
    if name1 == "Vaish"{
        return true
    }
    else if name2 == "Vaish" {
        return false
    }
    return name1 < name2
})
print(CaptionFirstTeam)

//Trailing CLosure shortern syntax

let CaptainFirstItemTrailing = team.sorted {
    if $0 == "Vaish" {
        return true
    }
    else if $1 == "Vaish" {
        return false
    }
    return $0 < $1
}
let reverseTeam = team.sorted { $0 > $1 }
let tOnly = team.filter {$0.hasPrefix("T")}
print(tOnly)
let upperCaseTeam = team.map{$0.uppercased() }
print(upperCaseTeam)

//Accepting function as a parameter

//Swift Struct

