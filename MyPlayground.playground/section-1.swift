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

var namedShape = NamedShape(name: "namedShape")

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func description() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.toRaw()

protocol ExampleProtocol {
    var simpleDescription: String{ get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription
var num = 7
num.adjust()
num
num.simpleDescription

extension Double { // add absoluteValue property to Double type by using extension.
    var absoluteValue:Double {
        get{
            if self > 0 {
                return self
            } else {
                return -self
            }
        }
    }
}

var doubleNum = -2.2
doubleNum.absoluteValue

var optionalString: String? = "optionalString"

println(optionalString)