// Classes

class Person {
    var name: String
    var age: Int
    
    var greetingText: String {
        get {
            return "Hello, \(name)"
        }
    }
    
    //another to define readonly property
    var greetingTextTwo: String {
        return "Hello, \(name)"
    }
    
    //another to define readonly property
    var greetingTextThree: String {
        "Hello, \(name)"
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print(self.greetingText)
    }
}

let john = Person(name: "John", age: 25)
john.sayHello()

// Inheritance

class SomeEmployee: Person {
    var salary: Double
    
    init(name: String, age: Int, salary: Double) {
        self.salary = salary
        // base class initialization
        super.init(name: name, age: age)
    }
    
    override func sayHello() {
        print("\(self.greetingTextTwo) - \(self.salary)")
    }
}

let charlie = SomeEmployee(name: "Charlie", age: 30, salary: 100000)
charlie.sayHello()

// Protocols

protocol Fruit {
    var color: String { get }
}

class Apple: Fruit {
    var color: String = "red"
}

class Banana: Fruit {
    var color: String = "yellow"
}

// Value Types

var a = 10
var b = a
b = 20

print(a) // prints 10
print(b) // prints 20

// Reference Types

class User {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let user1 = User(name: "John")
let user2 = user1 // we copy reference to an object
user2.name = "Jane"

print(user1.name) 
print(user2.name)

// Structures - Value Type

struct SimplePerson {
    var name: String
    var age: Int
    
    var greetingText: String {
        return "Hello, \(self.name)"
    }
}

let jhonny = SimplePerson(name: "John", age: 25)
var jane = jhonny // we copy whole structure
jane.name = "Jane"
print(jhonny.greetingText)
print(jane.greetingText)

// Enums
enum Gender {
    case male
    case female
}

// Enums with values
enum WordDirections {
    case north(degree: Int)
    case east(degree: Int)
    case south(degree: Int)
    case west(degree: Int)
}

let currentDirection = WordDirections.north(degree: 90)
print(currentDirection)

// Subscript
struct Week {
    private let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
        "Saturday", "Sunday"]
    
    subscript(index: Int) -> String {
        return self.days[index]
    }
}

let week = Week()
print(week[0])
print(week[1])
print(week[2])

// Casting of types
class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class SoftwareEngineer: Employee {
    var salary: Double
    
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    
    func printStatus() {
        print("\(self.name) is working")
    }
}

class SoftwareManager: Employee {
    var salary: Double
    
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    
    func printMotivationalSpeech() {
        print("Just do it!")
    }
}

let johnEngineer = SoftwareEngineer(name: "John", salary: 1)
let jamesManager = SoftwareManager(name: "James", salary: 200)

func doSomething(with employee: Employee) {
    if (employee is SoftwareEngineer) {
        let softwareEngineer = employee as! SoftwareEngineer
        softwareEngineer.printStatus()
    }
    
    if (employee is SoftwareManager) {
        let softwareManager = employee as! SoftwareManager
        softwareManager.printMotivationalSpeech()
    }
}

func doSomethinTwo(with employee: Employee) {
    (employee as? SoftwareEngineer)?.printStatus()
    (employee as? SoftwareManager)?.printMotivationalSpeech()
}

func doSomethiThree(with employee: Employee) {
    if let engineer = employee as? SoftwareEngineer {
        engineer.printStatus()
    } else if let manager = employee as? SoftwareManager {
        manager.printMotivationalSpeech()
    }
}

doSomething(with: johnEngineer)
doSomething(with: jamesManager)

doSomethinTwo(with: johnEngineer)
doSomethinTwo(with: jamesManager)

doSomethiThree(with: johnEngineer)
doSomethiThree(with: jamesManager)
