//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var Name:String = "Initial Name"
    
    init () {
       self.sayCheese()
    }
    
    func sayCheese () {
        print("Cheese")
    }
    
}

var firstPerson = Person()

firstPerson.Name
firstPerson.Name = "Tomek"
firstPerson.Name

var secoundPerson = Person()

secoundPerson.Name = "Bob"

firstPerson.Name
secoundPerson.Name
