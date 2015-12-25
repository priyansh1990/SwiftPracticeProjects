//
//  ViewController.swift
//  BullsEye
//
//  Created by Priyansh Agarwal on 25/12/15.
//  Copyright © 2015 Priyansh Agarwal. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue:Int=0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        currentValue=lroundf(slider.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(slider: UISlider)
    {
        print("The value of slider is \(slider.value)")
        currentValue=lroundf(slider.value)
    }

    @IBAction func showAlert(sender: AnyObject)
    {
        let message = "The value of slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }
}

