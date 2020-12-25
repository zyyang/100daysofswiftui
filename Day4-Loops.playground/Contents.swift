import UIKit


// For loop, loop over arrays and ranges
let count = 1...10

for number in count{
    print("Number is \(number)")
}


let albums = ["Red", "1989", "Reputation"]

for album in albums{
    print("\(album) is on Apple Music")
}

print("Players gonna ")
for _ in 1...5{
    print("play")
}


var number = 1
while number <= 20{
    print(number)
    number += 1
}


var number_b = 1

repeat{
    print(number_b)
    number_b += 1
} while number_b <= 20


while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false


//Exiting loops
//var countDown = 10
//
//while countDown >= 0{
//    print(countDown)
//    countDown -= 1
//}

var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}


outerLoop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


for i in 1...10{
    if i % 2 == 1 {
        continue
    }
    print(i)
}

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}


//Loops let us repeat code until a condition is false.
//The most common loop is for, which assigns each item inside the loop to a temporary constant.
//If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
//There are while loops, which you provide with an explicit condition to check.
//Although they are similar to while loops, repeat loops always run the body of their loop at least once.
//You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
//You can skip items in a loop using continue.
//Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
