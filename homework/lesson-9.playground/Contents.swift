/*
 Домашнее задание по теме "Объектно-ориентированное программирование".
 
 Создайте класс Circle, конструктор которого принимает радиус окружности
 и сохраняет это значение в приватное поле.
 
 Класс Circle должен предоставлять публичный метод area,
 возвращающий площадь круга.
 
 Для проверки вашего решения раскоментируйте блок кода внизу файла.
 */

class Circle {
    private let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return radius * radius * Double.pi
    }
}

let circle = Circle(radius: 20)
print(circle.area())
