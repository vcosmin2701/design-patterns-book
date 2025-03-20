module Human
    MALE = :male
    FEMALE = :female
end

class Animal
    # attr_reader -> creates getter methods for instance variables
    attr_reader :name, :age, :weight, :color

    def initialize(name, age, weight, color)
        @name = name
        @age = age
        @weight = weight
        @color = color
    end

    def breath
        "#{@name} is breathing.."
    end

    def eat
        "#{@name} is eating.."
    end
end

class Cat < Animal
    attr_reader :is_nasty

    def initialize(is_nasty, name, age, weight, color)
        @is_nasty = is_nasty
        super(name, age, weight, color)
    end

    def meow
        "#{@name} says: Meowww"
    end

    def eat
        "The cat is eating.."
    end
end

class Dog < Animal
    attr_reader :best_friend

    def initialize(best_friend, name, age, weight, color)
        @best_friend = best_friend
        super(name, age, weight, color)
    end

    def bark
        "#{@name} says: Wooff"
    end

    def eat
        "The dog is eating.."
    end
end

cat1 = Cat.new(true, "Marty", 3, 5, "orange")
dog1 = Dog.new(Human::MALE, "Roco", 10, 20, "black")

puts dog1.eat
puts dog1.bark
puts cat1.eat
puts cat1.meow