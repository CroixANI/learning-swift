let numbers: [Int] = [1, 2, 3, 4, 5]

enum ArrayError: Error {
    case indexDoesNotExist
}

func getElement(at index: Int) throws -> Int {
    guard index >= 0 && index < numbers.count else {
        throw ArrayError.indexDoesNotExist
    }
    return numbers[index]
}

// case 1 - with "try?" in case of exception we will get "nil" without exception details
let element = try? getElement(at: 10)
print(element ?? "Element not found")

// case 2 - when we need exception details
do {
    let element = try getElement(at: 10)
    print(element)
} catch ArrayError.indexDoesNotExist {
    print("Index error")
} catch {
    print("Error: \(error)")
}

