import UIKit

var greeting = "Hello, playground"


protocol Fruit {
    func set(price: String?)
    func clone() -> Fruit
}


class Apple: Fruit {

    var count: Int
    var price: String?
    
    init(count: Int){
        self.count = count
    }
    
    func set(price: String?) {
        self.price = price
    }
    
    // function definition for cloning the object

    func clone() -> Fruit {
        return Apple(count: self.count)
    }
    
}
let prototype = Apple(count: 4)
prototype.set(price: "$10")
print(prototype.price ?? "")

print(prototype.count)

let redApple: Apple = prototype.clone() as! Apple
print(redApple.count)

// add own properties
redApple.set(price: "$2")
redApple.price // $2
print(redApple.price ?? "")
print(prototype.price ?? "")



//• When you clone an object, all the properties of that object is copied to another object.
//• This design pattern should be used when you need to create an object without knowing the hierarchy of that class
