
// Declaración implícita
var greeting = "Hello, playground"

// Declaración explícita
var age: Int = 32

age = 40

let name = "Jorge"

greeting = "Hi, \(age)"

var students = ["Joao", "Joseph", "Vilma"]

students.append("Rodrigo")

for student in students {
    print(student)
}

var grades: [Int]

grades = [Int]()

grades.append(15)

/*
 Abstracción
 Herencia
 Polimorfismo
 Encapsulamiento
 */

struct Teacher {
    let name: String
    let major: String
}

class Student {
    let name: String
    let email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

func add(_ a: Int, with b: Int) -> Int {
    a + b
}

add(10, with: 5)



let greetingStudent: () -> Void  = {
    print("Hello, ISIL")
}

greetingStudent()

let addNumbers = { (a: Int, b: Int) -> Int in
    return a + b
}

let result = addNumbers(5, 10)
print(result)

typealias operation = (Int, Int) -> Int

let adding: operation = {
    $0 + $1
}

let minus: operation = {
    $0 - $1
}

func doOperation(a: Int, b: Int, operation: operation) {
    print(operation(a,b))
}

doOperation(a: 10, b: 7, operation: {
    $0 * $1
})

