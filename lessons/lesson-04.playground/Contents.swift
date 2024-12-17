// Arrays

var numbers: [Int] = [1, 2, 3, 4, 5]

print(numbers)

print("Array length: \(numbers.count)")

let firstNumber = numbers.first!
let lastNumber = numbers.last!

print("First number: \(firstNumber)")
print("Last number: \(lastNumber)")

numbers.append(6)

print(numbers)

numbers.removeLast()
numbers.remove(at: 1)

print(numbers)

print(numbers.min()!)
print(numbers.max()!)

// Sets

var mySet: Set<Int> = [1, 2, 3, 4, 5]

// could have different output compared to previous run of this runbook
print(mySet)

mySet.insert(6)
mySet.remove(1) // !!! it is not an index, but a number to remove

print(mySet)

// Dictionaries
var dictionary: [String: Int] = ["first": 1, "second": 2, "third": 3]

print(dictionary)
print(dictionary["first"]!)

// delete by key
dictionary["first"] = nil
dictionary.removeValue(forKey: "second")

print(dictionary)


