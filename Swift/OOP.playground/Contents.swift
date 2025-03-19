import Foundation

/// Simple Class Hierachy

enum Human {
    case male, female
}

class Animal {
    let name: String
    let age: Int
    let weight: Int
    let color: String
    
    func breath() -> String {
        "\(name) is breathing.."
    }
    
    func eat() -> String {
        "\(name) is eating.."
    }
    
    init(name: String, age: Int, weight: Int, color: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.color = color
    }
}

class Cat: Animal {
    let isNasty: Bool
    
    func meow() -> String {
        "\(name) says: Meowww"
    }
    
    override func eat() -> String {
        "The cat is eating.."
    }
    
    init(isNasty: Bool, name: String, age: Int, weight: Int, color: String) {
        self.isNasty = isNasty
        super.init(name: name, age: age, weight: weight, color: color)
    }
}

class Dog: Animal {
    let bestFriend: Human
    
    func bark() -> String {
        "\(name) says: Woofff"
    }
    
    override func eat() -> String {
        "The dog is eating.."
    }
    
    init(bestFriend: Human, name: String, age: Int, weight: Int, color: String) {
        self.bestFriend = bestFriend
        super.init(name: name, age: age, weight: weight, color: color)
    }
}

let cat1 = Cat(isNasty: true, name: "Marty", age: 3, weight: 5, color: "orange")
let dog1 = Dog(bestFriend: .male, name: "Roco", age: 10, weight: 20, color: "black")

print(dog1.eat())
print(dog1.bark())

