import UIKit

//https://www.hackingwithswift.com/sixty/2/1/arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]


//Note: If you’re using type annotations, arrays are written in brackets: [String], [Int], [Double], and [Bool].
beatles[1]



//https://www.hackingwithswift.com/sixty/2/2/sets

let colors = Set(["red", "green", "blue"])

//the duplicates get ignored

let colors2 = Set(["red", "green", "blue", "red", "blue"])



//https://www.hackingwithswift.com/sixty/2/3/tuples
let name = (first: "John", last: "Mayer")

name.0
name.first

//you can change the values inside a tuple after you create it, but not the types of values.

//https://www.hackingwithswift.com/sixty/2/4/arrays-vs-sets-vs-tuples

//specific, fixed collection of related values where each item has a precise position or name
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")


//a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly
let set = Set(["aardvark", "astronaut", "azalea"])

set.contains("azalea")


//a collection of values that can contain duplicates, or the order of your items matters
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


//https://www.hackingwithswift.com/sixty/2/5/dictionaries


let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]


//https://www.hackingwithswift.com/sixty/2/6/dictionary-default-values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]


//https://www.hackingwithswift.com/sixty/2/7/creating-empty-collections

//dictionaries
var teams = [String: String]()

//array
var types = [String]()

//Set
//Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.
var words = Set<String>()
var numbers = Set<Int>()


//create arrays and dictionaries with similar syntax
var scores = Dictionary<String, Int>()
var results = Array<Int>()


//https://www.hackingwithswift.com/sixty/2/8/enumerations

enum Result {
    case success
    case failure
}
Result.failure

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}


//https://www.hackingwithswift.com/sixty/2/9/enum-associated-values


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

//TODO what is talking?


enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

//TODO

//https://www.hackingwithswift.com/sixty/2/10/enum-raw-values


enum PlanetInt: Int {
    case mercury =  1
    case venus
    case earth
    case mars
}
let earth = PlanetInt(rawValue: 2)

//case mercury = 1

