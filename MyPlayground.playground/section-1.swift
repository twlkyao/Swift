// Playground - noun: a place where people can play

var numbers = [20, 1, 7, 12]


sort(numbers, >)
numbers

class Shape {
    var numberOfSides: Int = 0
    let constant = 0

    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    func fun(argument: Float) {

    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.description()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}