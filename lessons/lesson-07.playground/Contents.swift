// forEach method

let numbers: [Int] = [-1, 2, 3, -4, 5]

numbers.forEach { print($0) }

// filter

let filteredNumbers: [Int] = numbers.filter { $0 > 0 }

print(filteredNumbers)

// reduce

let sumOne: Int = numbers.reduce(0) { partialResult, element in
    partialResult + element
}
let sum: Int = numbers.reduce(0) { $0 + $1 }

print(sumOne)
print(sum)

// map

let doubledNumbers: [Int] = numbers.map { $0 * 2 }

print(doubledNumbers)

// flatMap - используется для преобразования двумерного массива в одномерный

let twoDimensionalNumbers: [[Int]] = [
    [-1, 2],
    [3, -4],
    [5],
    [-6, 7, 3, 6]
]
let flattenedNumbers: [Int] = twoDimensionalNumbers.flatMap { $0 }

print(flattenedNumbers)
