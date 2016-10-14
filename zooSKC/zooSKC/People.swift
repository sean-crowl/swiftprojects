//
//  People.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class People {
    var currentInput: String = ""
    var io = Io()
    var persName: String
    var gender: String
    var age: String
    
    init(personName: String, personGender: String, personAge: String) {
        persName = personName
        gender = personGender
        age = personAge
    }
}

class Employee: People {
    var job: String
    
    init(persName: String, gender: String, age: String, jobTitle: String) {
        job = jobTitle
        
        super.init(personName: persName, personGender: gender, personAge: age)
    }
}

class Visitor: People {
    var attraction: String
    
    init(persName: String, gender: String, age: String, favoriteAttraction: String) {
        attraction = favoriteAttraction
        
        super.init(personName: persName, personGender: gender, personAge: age)
    }
}
