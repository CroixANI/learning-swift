/*
 Домашнее задание по теме "Обработка ошибок":
 1. Функция verifyAge должна возвращать true, если пользователь совершеннолетний.
 2. Функция verifyAge должна выбрасывать ошибку, если пользователь не является совершеннолетним. Для этого потребуется определить собственный тип ошибок на основе типа Error.
 3. Перехват ошибки при вызове verifyAge внутри print не требуется.
 */

// В этом месте нужно описать собственный тип ошибок.
enum VerifyAgeError: Error {
    case underAge
}

func verifyAge(_ age: UInt) throws -> Bool {
    guard age >= 18 else {
        throw VerifyAgeError.underAge
    }
    return true // Вместо этой строки напишите ваше решение.
}

print(try verifyAge(20))

let underAgeResult = try? verifyAge(17)
print(underAgeResult ?? "Under age")
