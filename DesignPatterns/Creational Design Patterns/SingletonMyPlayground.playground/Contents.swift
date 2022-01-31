import UIKit

var greeting = "Hello, playground"


// Singleton class Vehicle
class Vehicle {
    static let sharedInstance = Vehicle()
    // private initialser
    private init() {}
    
    func getName() -> String {
        return "Car"
    }
}


/**
 
 • We use the let keyword to make sure that the shredInstance’s value will not change
 • Don’t forget to add the private initialiser so as to prevent other classes from calling its default initializers
 
 
 
 The main reason we use Creational Design Pattern is to decouple the logic of creation of an object from its usage.
 
 It helps reduce complexities by creating objects in a controlled manner with already mentioned tried & tested solutions.
 */
