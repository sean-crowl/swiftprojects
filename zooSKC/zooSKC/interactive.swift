//
//  interactive.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

class Interactive {
    var done: Bool = false
    var currentInput: String = ""
    var io = Io()
    var zoo = Zoo()
    
    func go() {
        while !done {
            
            // Ask the user for input right here.
            io.writeMessage("\nWelcome to Zoo Management Mach 5! What would you like to do today? Type 'Help' for a list of options!")
            currentInput = io.getInput()
            let selection = currentInput
            switch selection {
                case "Help":
                print("\nHere is a list of available actions for the management system:\nAddAnimal: You may add an entry for an animal.\nAddPerson: You may add an entry for an employee or visitor.\nViewAnimals: View the current available animals.\nViewPeople: View the current available employees and visitors.\nDetailAnimals: View details on specific animals.\nDetailPeople: View details on employees or visitors.\nQuit: Quit the program.\n")
                case "Quit":
                    print("\nThank you for using Zoo Management Mach 5!")
                    done = true
                case "AddAnimal":
                    io.writeMessage("\nWould you like to add a 'Land' animal, an 'Avian' animal, or an 'Aquatic' animal?")
                    currentInput = io.getInput()
                        let animalPick = currentInput
                    switch animalPick {
                    case "Land":
                        zoo.addLandAnimal()
                    case "Avian":
                        zoo.addAvianAnimal()
                    case "Aquatic":
                        zoo.addAquaticAnimal()
                    default:
                        print("You must make a valid selection!")
                        }
                case "AddPerson":
                    io.writeMessage("\nWould you like to add a 'Visitor' or an 'Employee'?")
                    currentInput = io.getInput()
                        let personPick = currentInput
                    switch personPick {
                    case "Visitor":
                        zoo.addVisitor()
                    case "Employee":
                        zoo.addEmployee()
                    default:
                        print("You must make a valid selection!")
                }
                case "ViewAnimals":
                    io.writeMessage("\nWould you like to view the 'Land' animals, 'Avian' animals, or 'Aquatic' animals?")
                    currentInput = io.getInput()
                        let animalView = currentInput
                    switch animalView {
                    case "Land":
                        zoo.printLandAnimals()
                    case "Avian":
                        zoo.printAvianAnimals()
                    case "Aquatic":
                        zoo.printAquaticAnimals()
                    default:
                        print("You must make a valid selection!")
                }
                case "ViewPeople":
                    io.writeMessage("\nWould you like to view 'Employees' or 'Visitors' ?")
                    currentInput = io.getInput()
                        let peopleView = currentInput
                    switch peopleView {
                    case "Employees":
                        zoo.printEmployees()
                    case "Visitors":
                        zoo.printVisitors()
                    default:
                        print("You must make a valid selection!")
                }
                case "DetailAnimals":
                    io.writeMessage("\nWould you like details on 'Land' animals, 'Avian' animals, or 'Aquatic' animals?")
                    currentInput = io.getInput()
                    let animalDetail = currentInput
                    switch animalDetail {
                    case "Land":
                        zoo.printLandAnimalDetails()
                    case "Avian":
                        zoo.printAvianAnimalDetails()
                    case "Aquatic":
                        zoo.printAquaticAnimalDetails()
                    default:
                        print("You must make a valid selection!")
                }
                case "DetailPeople":
                    io.writeMessage("\nWould you like details on 'Employees' or 'Visitors'?'")
                    currentInput = io.getInput()
                    let peopleDetail = currentInput
                    switch peopleDetail {
                    case "Employees":
                        zoo.printEmployeeDetails()
                    case "Visitors":
                        zoo.printVisitorDetails()
                    default:
                        print("You must make a valid selection!")
            }
            
                default:
                print("\nNot a valid selection!")
                        }
                        
                }
        
        print("\nExiting...")
        
        return
    }
}
