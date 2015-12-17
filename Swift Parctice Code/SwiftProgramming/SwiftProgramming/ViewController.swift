//
//  ViewController.swift
//  SwiftProgramming
//
//  Created by Puneet Rao on 15/12/15.
//  Copyright © 2015 Priyansh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_Num: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let newPerson=Person()
        
        newPerson.firstName = "Ry"
        newPerson.lastName = "Bristow"
        newPerson.age = 18
        
        newPerson.changeFirstName("Paul")

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_Pressed(sender: AnyObject)
    {
         txt_Num.text=String(self.randomIntBetween(10, high: 20))
    }
    
    func randomIntBetween(low:Int ,high:Int)->Int
    {
        let range=high-(low-1)
        return (Int(arc4random())%range)+(low-1)
    }
    
    
}


import UIKit

class Person
{
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func input() -> String
    {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
        if let string = rawString
        {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        }
        else
        {
            return "Invalid input"
        }
    }
    func changeFirstName(newFirstName:String)
    {
        firstName = newFirstName
    }
    
    func enterInfo()
    {
        print("What is the first Name")
        firstName=input()
    }
    
    func printInfo()
    {
        print("First name is \(firstName)")
    }
}


