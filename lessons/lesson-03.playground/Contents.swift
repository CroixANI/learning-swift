import UIKit

var greeting = "Hello, playground"
var count1 = 10.0
var count2: Int = 10
var count3: Double = 10.0
var count4: Float = 10.0

let multiline = """
Hello world
Next line
"""

print(multiline)

let name = "John"
let greetingWithName = "Hello \(name)"

print(greetingWithName)

var optionalString: String? = nil
var myBool = true
print(myBool)

var numberA:Int = 5
var numberB:Double = 2.5
var sum = Double(numberA) + numberB
print(sum)

var nubmerToCheck = 10
var message = nubmerToCheck % 2 == 0 ? "Число четное" : "Число нечетное"
print(message)

var optionalNumber : Int? = nil
if let value = optionalNumber {
    print(value)
}


let multilineOne = """
Это первая строка
Это вторая строка
Это третья строка
"""
print(multilineOne)

var isAlive = true
print(isAlive)

//var integerValue : Int = 42
//var doubleValue : Double = Double(integerValue)
//print(doubleValue)

var doubleValue : Double = 42.0
var messageDoubleValue = doubleValue > 50 ? "Больше 50" : "Не больше 50"
print(messageDoubleValue)
