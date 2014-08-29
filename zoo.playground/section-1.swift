class zoo{
    
    let animal:String
    let food:String
    var animalFood: [String:String]
    
    init(animal:String, food:String){
        self.animal = animal
        self.food = food
        
        animalFood = [animal:food]
    }
    
    func addAnimal(animal:String, food:String){
        animalFood[animal] = food
    }
    
    
}
let animal = zoo(animal: "cat", food: "Me-O")
