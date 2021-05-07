/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, Comparable, and Codable

 Create a `Human` class with two properties: `name` of type `String` and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.name < rhs.name
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age

    }
    var description: String {
        return "Name: \(name) Age: \(age)"
    }
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        
            
           
        }
    }

let diego = Human(name: "Diego", age: 31)
let jose = Human(name: "Jose", age: 30)

print(diego)
print(jose)


/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether your two previously initialized `Human` objects are equal to each other (using `==`). Then print the result of a boolean expression evaluating whether your two previously initialized `Human` objects are not equal to each other (using `!=`).
 */
print(diego == jose)
print(diego != jose)

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
let maria = Human(name: "Maria", age: 20)
let mario = Human(name: "Mario", age: 20)
let julia = Human(name: "Julia", age: 33)
let flavio = Human(name: "Flávio", age: 44)
let people = [maria, mario, julia, flavio]

let sortedPeople = people.sorted(by: <)
/*:
 Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored and print it to the console.
 */
import Foundation
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(maria) {
    let jsonString = String(data: jsonData, encoding: .utf8)
    print(jsonString)
}


//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
