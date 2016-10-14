//
//  Zoo.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Zoo {
    var done: Bool = false
    var currentInput: String = ""
    var io = Io()
    var animName: String = ""
    var size: String = ""
    var color: String = ""
    var food: String = ""
    var legs: String = ""
    var fly: String = ""
    var water: String = ""
    var persName: String = ""
    var gender: String = ""
    var age: String = ""
    var job: String = ""
    var attraction: String = ""
    var landHabitat: String = ""
    var avianHabitat: String = ""
    var aquaticHabitat: String = ""
    
    var landAnimalList = [Land(animName: "Lion", size: "Medium", color: "Yellow", food: "Meat", numberOfLegs: "4"), Land(animName: "Rhino", size: "Large", color: "Grey", food: "Grass", numberOfLegs: "4")]
    var avianAnimalList = [Avian(animName: "Ostrich", size: "Large", color: "Black and Tan", food: "Seeds", doesItFly: "No"), Avian(animName: "Cardinal", size: "Small", color: "Red", food: "Bugs", doesItFly: "Yes")]
    var aquaticAnimalList = [Aquatic(animName: "Shark", size: "Large", color: "Grey", food: "Fish", typeOfWater: "Salt"), Aquatic(animName: "Stingray", size: "Medium", color: "Black", food: "Shrimp", typeOfWater: "Salt")]
    var employeeList = [Employee(persName: "Sean Connery", gender: "Male", age: "86", jobTitle: "Lion Trainer"), Employee(persName: "Elvis Presley", gender: "Male", age: "42", jobTitle: "Zoo Entertainer")]
    var visitorList = [Visitor(persName: "Hillary Clinton", gender: "Fmale", age: "68", favoriteAttraction: "Emperor Penguins"), Visitor(persName: "Donald Trump", gender: "Male", age: "70", favoriteAttraction: "Giraffes. They're hyuuge.")]
    
    enum HabitatType {
        case Pit
        case Aviary
        case Aquarium
    }
    
    
    func addLandAnimal() {
        io.writeMessage("\nWhat is the animal you would like to add?")
        currentInput = io.getInput()
        animName = currentInput
        io.writeMessage("\nWhat is the size of the animal? (Example: Small, Large, etc.)")
        currentInput = io.getInput()
        size = currentInput
        io.writeMessage("\nWhat is the color of the animal?")
        currentInput = io.getInput()
        color = currentInput
        io.writeMessage("\nWhat kind of food does the animal eat? (Example: Meat, Plants, etc.)")
        currentInput = io.getInput()
        food = currentInput
        io.writeMessage("\nHow many legs does it have?")
        currentInput = io.getInput()
        legs = currentInput
        
        print("\nYou have added the \(animName)! It is of \(size) size and \(color) in color. It eats \(food) and has \(legs) legs. Its exhibit in the zoo will be a \(HabitatType.Pit).\n\nThank you! Your animal has been added!\n")
        let newLand = Land(animName: animName, size: size, color: color, food: food, numberOfLegs: legs)
        landAnimalList.append(newLand)
        
    }
    
    func addAvianAnimal() {
        io.writeMessage("\nWhat is the animal you would like to add?")
        currentInput = io.getInput()
        animName = currentInput
        io.writeMessage("\nWhat is the size of the animal? (Example: Small, Large, etc.)")
        currentInput = io.getInput()
        size = currentInput
        io.writeMessage("\nWhat is the color of the animal?")
        currentInput = io.getInput()
        color = currentInput
        io.writeMessage("\nWhat kind of food does the animal eat? (Example: Meat, Plants, etc.)")
        currentInput = io.getInput()
        food = currentInput
        io.writeMessage("\nDoes it fly?")
        currentInput = io.getInput()
        fly = currentInput
        
        print("\nYou have added the \(animName)! It is of \(size) size and \(color) in color. It eats \(food). Can it fly? \(fly). Its exhibit in the zoo will be in an \(HabitatType.Aviary).\n\nThank you! Your animal has been added!\n")
        let newAvian = Avian(animName: animName, size: size, color: color, food: food, doesItFly: fly)
        avianAnimalList.append(newAvian)
        
    }
    
    func addAquaticAnimal() {
        io.writeMessage("\nWhat is the animal you would like to add?")
        currentInput = io.getInput()
        animName = currentInput
        io.writeMessage("\nWhat is the size of the animal? (Example: Small, Large, etc.)")
        currentInput = io.getInput()
        size = currentInput
        io.writeMessage("\nWhat is the color of the animal?")
        currentInput = io.getInput()
        color = currentInput
        io.writeMessage("\nWhat kind of food does the animal eat? (Example: Meat, Plants, etc.)")
        currentInput = io.getInput()
        food = currentInput
        io.writeMessage("\nDoes it live in 'Fresh' water or 'Salt' water?")
        currentInput = io.getInput()
        water = currentInput
        
        print("\nYou have added the \(animName)! It is of \(size) size and \(color) in color. It eats \(food) and lives in \(water) water. Its exhibit in the zoo will be in an \(HabitatType.Aquarium).\n\nThank you! Your animal has been added!\n")
        let newAquatic = Aquatic(animName: animName, size: size, color: color, food: food, typeOfWater: water)
        aquaticAnimalList.append(newAquatic)
        
    }
    
    func addEmployee() {
        io.writeMessage("\nWhat is the employee's name?")
        currentInput = io.getInput()
        persName = currentInput
        io.writeMessage("\nWhat is the employee's gender?")
        currentInput = io.getInput()
        gender = currentInput
        io.writeMessage("\nWhat is the employee's age?")
        currentInput = io.getInput()
        age = currentInput
        io.writeMessage("\nWhat job does the employee perform?")
        currentInput = io.getInput()
        job = currentInput
        
        print("\nYou have added the employee \(persName)! They are \(age) in age and \(gender) in gender. Their job is \(job).\n\nThank you! Your animal has been added!\n")
        let newEmployee = Employee(persName: persName, gender: gender, age: age, jobTitle: job)
        employeeList.append(newEmployee)
    }
    
    func addVisitor() {
        io.writeMessage("\nWhat is the visitor's name?")
        currentInput = io.getInput()
        persName = currentInput
        io.writeMessage("\nWhat is the visitor's gender?")
        currentInput = io.getInput()
        gender = currentInput
        io.writeMessage("\nWhat is the visitor's age?")
        currentInput = io.getInput()
        age = currentInput
        io.writeMessage("\nWhat is the visitor's favorite attraction?")
        currentInput = io.getInput()
        attraction = currentInput
        
        print("\nYou have added the visitor \(persName)! They are \(age) in age and \(gender) in gender. Their favorite attraction is \(attraction).\n\nThank you! Your animal has been added!\n")
        let newVisitor = Visitor(persName: persName, gender: gender, age: age, favoriteAttraction: attraction)
        visitorList.append(newVisitor)
    }
    
    

    func printLandAnimals() {
        for i in landAnimalList {
                print(i.animName)
            }
    }
    
    func printAvianAnimals() {
        for i in avianAnimalList {
            print(i.animName)
        }
    }
    
    func printAquaticAnimals() {
        for i in aquaticAnimalList {
            print(i.animName)
        }
    }

    func printEmployees() {
        for i in employeeList {
            print(i.persName)
        }
    }
    
    func printVisitors() {
        for i in visitorList {
            print(i.persName)
        }
    }
    
    func printLandAnimalDetails() {
        for i in landAnimalList {
            print(i.animName)
            print("   -Size: \(i.size)")
            print("   -Color: \(i.color)")
            print("   -Food: \(i.food)")
            print("   -Number of Legs: \(i.legs)")
            print("   -Habitat: \(HabitatType.Pit)\n")
        }
    }
    
    func printAvianAnimalDetails() {
        for i in avianAnimalList {
            print(i.animName)
            print("   -Size: \(i.size)")
            print("   -Color: \(i.color)")
            print("   -Food: \(i.food)")
            print("   -Does it Fly: \(i.fly)")
            print("   -Habitat: \(HabitatType.Aviary)\n")
        }
    }
    
    func printAquaticAnimalDetails() {
        for i in aquaticAnimalList {
            print(i.animName)
            print("   -Size: \(i.size)")
            print("   -Color: \(i.color)")
            print("   -Food: \(i.food)")
            print("   -Type of Water: \(i.water)")
            print("   -Habitat: \(HabitatType.Aquarium)\n")
        }
    }
    
    func printEmployeeDetails() {
        for i in employeeList {
            print(i.persName)
            print("   -Age: \(i.age)")
            print("   -Gender: \(i.gender)")
            print("   -Job: \(i.job)\n")

        }
    }
    
    func printVisitorDetails() {
        for i in visitorList {
            print(i.persName)
            print("   -Age: \(i.age)")
            print("   -Gender: \(i.gender)")
            print("   -Favorite Attraction: \(i.attraction)\n")
            
        }
    }
    
}

