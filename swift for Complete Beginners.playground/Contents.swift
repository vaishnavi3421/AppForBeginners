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
// structure
// function ( are in a same parathesis{ })
//provide values
// mix
// display
/* Struct => instance :- Constant
             Property :- Constant
  by default
  if we want to make any changes in func make it mutating
 
  
 
 */

// property:- things under struct  let title:String, let artist:String, let year:Int
//methods:- printSumary
// instance :- whcn we create contsant /variable from our struct eg red wings

struct Album {
    let title : String
    let artist : String
    let year : Int
    
    func printSummary() {
        print("\(title)\(year) by \(artist)")
    }
}
let red = Album(title: "Red", artist: "Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.year)
red.printSummary()
wings.printSummary()

struct Employee {
    let name :String
    var vacationRemaining : Int
    
     mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going to vacation")
            print("Days remainging \(vacationRemaining)")
        }
         else {
             print("now go back to your work")
         }
    }
}
var archer = Employee(name: "Vaish", vacationRemaining: 9)
archer.takeVacation(days: 4)

// Store Property :-
// Computed Property :-
print ("Computed Property")
struct Employee1 {
    let name  :String
    var vacationAllocated = 14
    var vacationTaken = 0
//    
//    var vacationRemaining : Int {
//        vacationAllocated - vacationTaken
//    }
    
    var vacationRemaining : Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    
}

var archerr = Employee1(name: "vaish", vacationAllocated: 14)
archerr.vacationTaken += 4
archerr.vacationRemaining = 5
print(archerr.vacationAllocated)

//getter and Setter


//Property Observer
// use when property value changes/ or wbout to change

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is : \(contacts)")
            print("New value is : \(newValue)")
        }
        didSet {
            print("Current value is : \(contacts)")
            print("old value is : \(oldValue)")
        }
    }
}
    var app = App()
    app.contacts.append("Adrin E")
app.contacts.append("ALLEN W")
app.contacts.append("Ish S")

//Create custom Initiallizer
struct Player {
    let name : String
    let number : Int
}
let player = Player(name: "Vaish", number: 34)
print(player)

struct Player1 {
    let name : String
    let number : Int
    // init :- no func keyword , no return type , self
     init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
 
struct Player2 {
    let name : String
    let number : Int
    
     init(name: String) {
        self.name = name
         number = Int.random(in: 1...99)
    }
}
let player2 = Player2(name: "Sonu")
print(player2.number)

//Static
//self :- The current Value of Struct // 34 , hello , true
//Self :- The Current type of Struct // Int , String, Bool
/*
 you can create your structure using struct keyword
 struct can have there own properties and Methods
 if method modifies properties of struct it must be mutating
 Struct can have stored property and Computed property
 we can didsetvand will set property observer to property
 */
struct School {
    static var studentCount = 0
    static func add(student: String) {
        print("\(student) inside the school")
        studentCount += 1
    }
}
School.add(student: "vaish")
print(School.studentCount)

//Class
