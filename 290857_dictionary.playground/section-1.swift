let array: Array<Int> = [1, 2, 3, 4]
let dictionary: Dictionary<String, Int> = ["dog":1, "elephant":2]

//*****************
var airports: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if airports.isEmpty{
    println("The aorports dictionary is empty.")
}
else{
    println("the airports dictionary is not empty.")
}

println("The airports dictionary contains \(airports.count) item." )

airports["LHR"] = "London"
//the airports dictionary now contains 3 items

airports["LHR"] = "London Heathrow"
//the value for "LHR" has been changed to "London Heatheow"

airports["BKK"] = "Bangkok"
airports

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
airports