//
//  Animal.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Animal {
    var currentInput: String = ""
    var io = Io()
    var animName: String
    var size: String
    var color: String
    var food: String
    
    init(animalName: String, animalSize: String, animalColor: String, animalFood: String) {
        animName = animalName
        size = animalSize
        color = animalColor
        food = animalFood
    }
}

class Land: Animal {
    var legs: String
    
    init(animName: String, size: String, color: String, food: String, numberOfLegs: String) {
        legs = numberOfLegs
        
        super.init(animalName: animName, animalSize: size, animalColor: color, animalFood: food)
    }
}

class Avian: Animal {
    var fly: String
    
    init(animName: String, size: String, color: String, food: String, doesItFly: String) {
        fly = doesItFly
        
        super.init(animalName: animName, animalSize: size, animalColor: color, animalFood: food)
    }
}

class Aquatic: Animal {
    var water: String
    
    init(animName: String, size: String, color: String, food: String, typeOfWater: String) {
        water = typeOfWater
        
        super.init(animalName: animName, animalSize: size, animalColor: color, animalFood: food)
    }
}
