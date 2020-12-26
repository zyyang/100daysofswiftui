import UIKit

//Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let devided = firstScore / secondScore
let remainder = 13 % firstScore

//Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//Compound assignment operators
var score = 95

score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//Comparison operators
let first = 6
let second = 4

first == second
first != second
first > second
first <= second

// string?
"Taylor" >= "Swift"

//Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21{
    print("Blackjack")
}else{
    print("Regular cards")
}


if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//The ternary operator
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//Switch statements
let weather = "sunny"

switch weather {
case "sunny":
    print("Wear sunscreen")
    fallthrough
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
default:
    print("Enjoy your day!")
}

//Range operators
let myscore = 85

switch myscore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
