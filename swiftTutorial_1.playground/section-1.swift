let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1

let priceIntInferred = -19
let priceIntExpLicit = -19

let priceDoubleInterred = -19.99
let priceDoubleExpLicit:Double = -19.99

let priceFloatInterred = -19.99
let priceFloatExpLicit:Float = -19.99

let onSaleInterred = true
let onSaleExpLicit = false

let nameInterred = "Whoopie Cushion"
let nameExpLicit:String = "Whoopie Cushion"


//Array ********************************
var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs", "Milk"]
//var shoppingListExplicit:[String] = ["Eggs", "Milk"]

var shoppingList = ["Eggs", "Milk"]
println("The shopping list contains \(shoppingList.count)items.")// .count คือการนับสมาชอกใน array
shoppingList.append("Flour") // .append เพิ่มค่าใน array
shoppingList += "Banking Powder"// เพิ่มค่าใน array
shoppingList += ["chocolate Spread", "Cheese", "Butter"]// เพิ่มค่าใน array
var firstItem = shoppingList[0] //เก็บค่าใน array index 0 ลงในตัวแปร firstItem
shoppingList[0] = "Six eggs"
shoppingList[0...3] = ["Bananas", "Apples"]
// [0...3 แทนการวน loop
shoppingList

//Add Value to Array ********************************
shoppingList += ["Banking Powder"]
//shoppingList now contains 4 items
shoppingList += ["Choolate Spread", "Cheese", "Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Maple Syrup", atIndex: 0)
//shoppingList now contains 7 items
//"Maple Syrup" is now the first items in the last
shoppingList.append("Flour")
//shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Banking Powder"]

//var 
firstItem = shoppingList[0]
//firstItem is equal to "Eggs"
shoppingList[4...6] = ["Bananas", "Apples"]
//shoppingList now contains 6 items

//Remove Values from Array ********************************
let apples = shoppingList.removeLast()
//the last item in the arrays has just been removed
//shoppingList now contains 5 items, and no apples
//the apples constant is now equal to the removed "Apples" string

let mapleSyrup = shoppingList.removeAtIndex(0)
//the item that was at index0 has just been removed
//shoppingList now contains 6 items, and no Maple Syrup
//the mapleSyrup constant is now equal to the removed "Maple Syrup staring


//Dictionary ********************************
var airports: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if airports.isEmpty{
    println("The aorports dictionary is empty.")
}
else{
    println("the airports dictionary is not empty.")
}
// prints "The airports dictionary is not empty."

println("The airports dictionary contains \(airports.count) item." )
//prints "The airports dictionary contains 2 items."

//Update and Add value Dictionary ********************************
airports["LHR"] = "London"
//the airports dictionary now contains 3 items

airports["LHR"] = "London Heathrow"
//the value for "LHR" has been changed to "London Heatheow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
//prints "The old value for DUB was Dublin."

//Remove value Dictionary ********************************
airports["APL"] = "Apple International"
//"Appler International" is not the real airport for APL, so delete it
airports["APL"] = nil
//APL has now been removed from the dictionary

if let removedValue = airports.removeValueForKey("DUB"){
    println("The removed airport's name is \(removedValue).")
}
else {
    println("The airports dictionary does not contain a value for DUB.")
}
//prints "The removed airport's name is Dublin International."
