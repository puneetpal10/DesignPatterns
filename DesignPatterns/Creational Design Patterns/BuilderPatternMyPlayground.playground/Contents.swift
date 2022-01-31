import UIKit

var greeting = "Hello, playground"


//This design pattern separate the process of creation of objects from its actual usage.

// protocol  for creating a product
protocol ShoeShop {
    func produceShoe()// abstract
}


// class that conforms to ShoeShop protocol
class Nike:ShoeShop {
    func produceShoe() {
        print("Shoe Produced")

    }
}


// class that is initialsed with the object that conforms to ShoeShop protocol

class Director {
    let shoeShop: ShoeShop
     // instantiation
     init(shoeShop: ShoeShop) {
         self.shoeShop = shoeShop
     }
    
    func produce() {
          shoeShop.produceShoe()
      }
}


// create a nike object
let nike = Nike()
// instantiate Director with nike object
let director = Director(shoeShop: nike)
// encapsulated the process of producing the nike product
director.produce() // "Shoe produced"


/**
 
 • Use Builder pattern when building public APIs because it does not reveal the implementation details
 • Hides complexity. It provides a simple API behind a complex task.

 
 
 */
