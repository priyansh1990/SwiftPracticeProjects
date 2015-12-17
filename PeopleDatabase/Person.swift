import Foundation

class Person  {
    
    var firstName = ""
    var lastName = ""
    var age = 0
    
    
    init()
    {
        
    }
    
    init(firstName:String, lastName:String, age:Int)
    {
        self.firstName=firstName
        self.lastName = lastName
        self.age=age
    }
    
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
    
    func changeFirstName(newFirstName:String) {
        firstName = newFirstName
    }
    
    func enterInfo()  {
        print("What is the first name?")
        firstName = input()
        print("What is the \(firstName)'s last name?")
        lastName=input()
        print("How old is  \(firstName) \(lastName)")
        let userInput=Int(input())
        if let number=userInput
        {
            age=number
        }
    }
    
    func printInfo()  {
        print("\(firstName) \(lastName) is \(age) years old")
    }
    
}


class TipCalculator {
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        print("15%: \(calcTipWithTipPct(0.15))")
        print("18%: \(calcTipWithTipPct(0.18))")
        print("20%: \(calcTipWithTipPct(0.20))")
    }
    
    
    func returnPossibleTips()->[Int:Double]
    {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred
        {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
    
}
