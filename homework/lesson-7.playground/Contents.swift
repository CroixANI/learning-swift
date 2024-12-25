/*
 Домашнее задание по теме "Углубленная работа с массивами".
 
 Массив numbers содержит вложенные массивы с числами.
 Требуется найти сумму всех элементов типа Int,
 содержащихся в массиве numbers на всех уровнях вложенности.
 */

let numbers = [
    [[1, 2, 3, 4]],
    [[5, 6, 7, 8]],
    [[9, 10]]
]

// Вместо нуля напишите собственное решение.
// Используйте методы flatMap и reduce.
let result = numbers
    .flatMap { $0 }
    .flatMap { $0 }
    .reduce(0) { $0 + $1 }

print("Сумма элементов типа Int: \(result)")