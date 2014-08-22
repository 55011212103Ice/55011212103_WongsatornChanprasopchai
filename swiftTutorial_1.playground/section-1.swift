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


//Array
var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs", "Milk"]
//var shoppingListExplicit:[String] = ["Eggs", "Milk"]

var shoppingList = ["Eggs", "Milk"]
println("The shopping list contains \(shoppingList.count)items.")
shoppingList.append("Flour")
shoppingList += "Banking Powder"
shoppingList += ["chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bananas", "Apples"]
shoppingList
