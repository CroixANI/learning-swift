/*
 Домашнее задание по теме "Функции".
 
 Напишите функцию getTextSize,
 которая принимает строку и возвращает длину этой строки в callback.
 
 Для тестирования вашего решения, раскомментируйте блок внизу файла.
 */

/*getTextSize("Привет!") { length in
    print("Длина строки: \(length)")
}*/

func getTextSize(_ text: String?, completion: (Int) -> Void) {
    guard let text else {
        completion(0)
        return
    }
    
    completion(text.count)
}

getTextSize("Привет!") { length in
    print("Длина строки: \(length)")
}
