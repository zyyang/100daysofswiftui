import UIKit

//Writing functions


func printHelp(){
    let message:String = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

//Accepting parameters

//func square(number:Int){
//    print(number * number)
//}

//Returning values

func square(number:Int) -> Int{
    return number * number
}

//Parameter labels

//externally it’s called to, but internally it’s called name
func sayHello(to name: String){
    print("Hello, \(name)!")
}

//Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}

//Default parameters
func greetMore(_ person: String, nicely: Bool = true){
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greetMore("Taylor")
greetMore("Taylor", nicely: false)

//Variadic functions
func multisquare(numbers:Int...){
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}
multisquare(numbers: 1, 2, 3, 4, 5)

//Writing throwing functions

enum PasswordError: Error{
    case obvious
}


func checkPassword(_ password: String) throws ->Bool{
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//Running throwing functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch{
  print("You can't use that password.")
}

//inout parameters
func doubleInPlace(number: inout Int){
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)

"""
Functions let us re-use code without repeating ourselves.
Functions can accept parameters – just tell Swift the type of each parameter.
Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
You can use different names for parameters externally and internally, or omit the external name entirely.
Parameters can have default values, which helps you write less code when specific values are common.
Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
Functions can throw errors, but you must call them using try and handle errors using catch.
You can use inout to change variables inside a function, but it’s usually better to return a new value.
"""
