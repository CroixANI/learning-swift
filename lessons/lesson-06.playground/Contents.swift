// functions

func helloWorld(name: String) -> Void {
    print("Hello '\(name)'!")
}

helloWorld(name: "Alex")

func isAdult(age: UInt) -> Bool {
    return age >= 18
}

let isAdultResult = isAdult(age: 21)
print(isAdultResult)
print(isAdult(age: 17))

// function with labels for argument
func isAdult2(withAge age: UInt) -> Bool {
    return age >= 18
}

print(isAdult2(withAge: 21))

// functions with the same name
func getFullNameOrAge(firstName: String, lastName: String) -> String {
    return "\(firstName) \(lastName)"
}

func getFullNameOrAge(age: UInt) -> String {
    let isAdult = isAdult(age: age)
    return isAdult ? "Adult" : "Child"
}

print(getFullNameOrAge(firstName: "John", lastName: "Doe"))
print(getFullNameOrAge(age: 21))

// inner functions

func getInitials(name: String) -> String {
    func getFirstAndLastName(name: String) -> (FirstName: String, LastName: String) {
        let parts = name.split(separator: " ")
        
        let firstName = parts.first.map(String.init) ?? ""
        let lastName = parts.last.map(String.init) ?? ""
        
        return (FirstName: firstName, LastName: lastName)
    }
    
    func getFirstLetter(name: String) -> String {
        return String(name.first!).uppercased()
    }
    
    let nameParts = getFirstAndLastName(name: name)
    let firstLetter = getFirstLetter(name: nameParts.FirstName)
    let lastLetter = getFirstLetter(name: nameParts.LastName)
    
    return "\(firstLetter). \(lastLetter)."
}

print(getInitials(name: "John Doe"))

// Closures

// Syntax
let getSum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

print(getSum(1, 2))

let getSum2: (Int, Int) -> Int = { $0 + $1 }

print(getSum2(1, 2))

// Usage

let numbers: [Int] = [1, 5, 3, 4, 0]
let sortedNumber = numbers.sorted { $0 < $1 }
let sortedNumber2 = numbers.sorted { a, b in
    a < b
}

print(sortedNumber)

// Closure with context
func createCounter() -> () -> Int {
    var count = 0
    let closure = {
        count += 1
        return count
    }
    
    return closure
}

let counter = createCounter()
print(counter())
print(counter())

// Callbacks

func greeting(for names: [String], completion: (Int) -> Void) {
    for name in names {
        print("Hello \(name)!")
    }
    
    completion(names.count)
}

greeting(for: ["John", "Jane", "Jack"]) { count in
    print("Total count: \(count)")
}

// Asyn Functions

func getDivisiors(forNumber number: UInt) async -> [UInt] {
    var result = [UInt]()
    
    for i in 1...number {
        if number % i == 0 {
            result.append(i)
        }
    }
    
    return result
}

print("Begin of calculations")
Task {
    let devisiors = await getDivisiors(forNumber: 54000)
    print("Divisionors count: \(devisiors.count)")
}
print("End of calculations")

// guard

func greetUser(name: String?) {
    guard let name else {
        print("Please provide a name")
        return
    }
    
    print("Hello \(name)!")
}

greetUser(name: "John")
greetUser(name: nil)

// defer

func printSquares(_ numbers: [Int]) {
    defer {
        print("Completed function")
        // close connections/files and etc
    }
    
    for number in numbers {
        
        print("\(number * number)")
    }
}

printSquares([1, 2, 3])
