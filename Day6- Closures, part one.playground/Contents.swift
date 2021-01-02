import UIKit


// Function -> Variable
let driving = {
    print("I'm driving in my car")
}

driving()

//Accepting parameters in a closure
let driving_adv = {(place:String) in
    print("I'm going to \(place) in my car.")
}

//driving_adv("Shen Zhen")

//Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Shen Zhen")
print(message)

//Closures as parameters
func travel(action: () -> Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
//travel(action: driving)

//Trailing closure syntax
travel {
    print("I'm driving in my car")
}

//Using closures as parameters when they accept parameters
func travel_adv(action: (String) -> String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

//travel_adv{ (place: String) in
//    print("I'm going to \(place) in my car")
//}

//travel_adv{ (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

//Shorthand parameter names
//travel_adv{ place -> String in
//    return "I'm going to \(place) in my car"
//}

//travel_adv{ place in
//    return "I'm going to \(place) in my car"
//}

//travel_adv{ place in
//    "I'm going to \(place) in my car"
//}
//
//travel_adv{
//    "I'm going to \($0) in my car"
//}

//Closures with multiple parameters
func travel_multi(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel_multi{
    "I'm going to \($0) at \($1) miles per hour."
}

//Returning closures from functions

func travel_rt() -> (String) -> Void{
    var counter = 1
    return {
        print("I'm going to \($0)")
        counter += 1
    }
}
let result = travel_rt()
result("London")
result("London")
result("London")

//Capturing values

"""
You can assign closures to variables, then call them later on.
Closures can accept parameters and return values, like regular functions.
You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
If the last parameter to your function is a closure, you can use trailing closure syntax.
Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
If you use external values inside your closures, they will be captured so the closure can refer to them later.
"""

