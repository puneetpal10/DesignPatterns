import UIKit

var greeting = "Hello, playground"


//Protocol
protocol Fruite {
    func getPrice() ->String
    func getCount() -> Int
}


    //Implement Fruit protocol


class Orange: Fruite {
    func getPrice() -> String {
        "$2"
    }
    
    func getCount() -> Int {
        3
    }
 
}

// Implements Fruit Protocol
class Banana: Fruite {
    func getPrice() -> String {
        return "$2"
    }
    
    func getCount() -> Int {
        return 5
    }
}
// Implements Fruit Protocol
class Grapes: Fruite {
    func getPrice() -> String {
        return "$3.5"
    }
    
    func getCount() -> Int {
        return 1
    }
}


enum FruitType {
    case orange, grapse, banana;
}



class FruitFactory {
    static func getFruit(forType type: FruitType) -> Fruite? {
        switch type{
        case .orange:
            return Orange()
        case .banana:
            return Banana()
        case .grapse:
            return Grapes()

        }
    }
}



// get the object of class Orange from the FruitFactory class
let orange = FruitFactory.getFruit(forType: .orange)
orange?.getPrice() // "$5
orange?.getCount() // 2
// get the object of class Grapes from the FruitFactory class
let grapes = FruitFactory.getFruit(forType: .grapse)
grapes?.getPrice() // "$3"
grapes?.getCount() // 1

/*
• The type of the object created is determined at runtime.
• This design pattern makes the codebase more flexible to add or remove new types.
This introduces us to the concept of program to an interface, not an implementation.
*/
