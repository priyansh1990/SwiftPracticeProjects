//
//  main.swift
//  PeopleDatabase
//
//  Created by Puneet Rao on 15/12/15.
//  Copyright © 2015 Priyansh. All rights reserved.
//

import Foundation

//var response:String
//var people:[Person]=[]
//repeat
//    {
//        var newPerson=Person()
//        
//        newPerson.enterInfo()
//        newPerson.printInfo()
//        print("Do You want to enter another name ?")
//        response=input()
//        people.append(newPerson)
//        
//} while(response == "y")
//
//
//var initPerson=Person(firstName: "Joe", lastName: "Sam", age: 23)
//
//for onePerson in people
//{
//    onePerson.printInfo()
//}

let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()


