//
//  ViewController.swift
//  BullsEye
//
//  Created by Priyansh Agarwal on 25/12/15.
//  Copyright © 2015 Priyansh Agarwal. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var roundlabel: UILabel!

    var currentValue:Int=0
    var targetValue:Int=0
    var score:Int=0
    var round: Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        startNewGame()
        updatelabel()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sliderMoved(slider: UISlider)
    {
        print("The value of slider is \(slider.value)")
        currentValue=lroundf(slider.value)
    }

    @IBAction func startOver(sender: AnyObject)
    {
        startNewGame()
        updatelabel()
    }

    
    @IBAction func showAlert(sender: AnyObject)
    {
        let difference = abs(currentValue - targetValue)
        var points = 100-difference
        score+=points
        let message = "You scored \(points) points"
        
        var title: String
        if difference == 0
        { title = "Perfect!"
            points += 100
        }
        else if difference < 5
        {
            title = "You almost had it!"
        }
        else if difference < 10
        {
         title = "Pretty good!"
        }
        else
        {
        title = "Not even close..."
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default,
            handler: { action in
            self.startNewRound()
            self.updatelabel()
            })
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func startNewRound()
    {
        currentValue=50
        slider.value=Float(currentValue)
        targetValue = 1 + Int(arc4random_uniform(100))
        round+=1
    }
    
    func updatelabel()
    {
        targetLabel.text=String(targetValue)
        scorelabel.text=String(score)
        roundlabel.text=String(round)

    }

    func startNewGame()
    {
        score = 0
        round = 0
        startNewRound()
    }
    
}

