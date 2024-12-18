// if statement
let age = 20
let isAdult = age >= 18

if isAdult {
    print("You are an adult")
} else {
    print("You are not an adult")
}

let temperature = 20
let isHot = temperature >= 30
let isCold = temperature <= 10

if isHot {
    print("It is hot")
} else if isCold {
    print("It is cold")
}
else {
    print("It is OK")
}

// switch
let fruit = "banana"

switch fruit {
case "apple":
    print("Apple")
case "banana":
    print("Banana")
default:
    print("Unknown")
}

// while loop

var count = 0
while count < 10 {
    print("\(count)")
    count += 1
}


// repeat while loop

repeat {
    print("Hello")
} while false

// for loop

for i in 1...10 {
    print("For Loop: Includes 10. Number is \(i)")
}

print("===================")

for i in 1..<10 {
    print("For Loop: Ecvludes 10. Number is \(i)")
}

print("=================== For Loop and Stride 1")

for i in stride(from: 10, through: 1, by: 1) {
    print("For Loop: Stride - Include 10. Number is \(i)")
}

print("=================== For Loop and Stride 2")

for i in stride(from: 10, to: 1, by: 1) {
    print("For Loop: Stride - Exclude 10. Number is \(i)")
}

print("=================== For Loop and Array")

var fruits: [String] = []
fruits.append("apple")
fruits.append("banana")
fruits.append("orange")

for fruit in fruits {
    print("Fruit is \(fruit)")
}

print("=================== For Loop and Dictionary")

var fruitsInBascet = ["apple": 1, "banana": 2, "orange": 3]
for (fruit, count) in fruitsInBascet {
    print("Fruit is \(fruit), Count is \(count)")
}

// if statement and optional string
let name: String? = "John"
if let name = name {
    print("Hello \(name)")
}
