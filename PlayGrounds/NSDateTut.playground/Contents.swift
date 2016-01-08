//: Playground - noun: a place where people can play

import UIKit

let dateCoponents=NSDateComponents()
let day=dateCoponents.day
let month=dateCoponents.month

let currentDate=NSDate()

let dateFormatter:NSDateFormatter=NSDateFormatter()
dateFormatter.locale=NSLocale.currentLocale()
dateFormatter.locale=NSLocale(localeIdentifier: "en_US_POSIX")
dateFormatter.dateStyle=NSDateFormatterStyle.ShortStyle
//dateFormatter.dateFormat="EEEE, MMMM dd, yyyy"
//dateFormatter.dateFormat="EEE, MMM dd, yyyy"
dateFormatter.dateFormat="MMMM dd, yyyy, HH:mm:ss"

var convertedDate = dateFormatter.stringFromDate(currentDate)
let calendar = NSCalendar.currentCalendar()

let dateComponents = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second, NSCalendarUnit.Nanosecond], fromDate: currentDate)

let components = NSDateComponents()
components.day = 5
components.month = 11
components.year = 2016
components.hour = 19
components.minute = 30
var newDate = calendar.dateFromComponents(components)

//components.timeZone=NSTimeZone(abbreviation: "UTC+05:30")
//newDate=calendar.dateFromComponents(components)
//
//components.timeZone = NSTimeZone(abbreviation: "GMT")
//newDate = calendar.dateFromComponents(components)

//components.timeZone = NSTimeZone(abbreviation: "CST")
//newDate = calendar.dateFromComponents(components)

components.timeZone = NSTimeZone(abbreviation: "CET")
newDate = calendar.dateFromComponents(components)


//Comparing Date and Time

dateFormatter.dateFormat = "MM dd, yyyy zzz"
var dateAsString = "Oct 08, 2015 GMT"
var date1 = dateFormatter.dateFromString(dateAsString)!

dateAsString = "Oct 10, 2015 GMT"
var date2 = dateFormatter.dateFromString(dateAsString)!

print("Earlier date is: \(date1.earlierDate(date2)) ")
