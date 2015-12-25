//
//  ViewController.swift
//  BullsEye
//
//  Created by M.I. Hollemans on 10/09/14.
//  Copyright (c) 2014 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var currentValue: Int = 0
  var targetValue: Int = 0

  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
    updateLabels()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func showAlert() {
    let message = "The value of the slider is: \(currentValue)"
      + "\nThe target value is: \(targetValue)"
    
    let alert = UIAlertController(title: "Hello, World",
      message: message, preferredStyle: .Alert)
    
    let action = UIAlertAction(title: "OK", style: .Default,
      handler: nil)
    
    alert.addAction(action)
    
    presentViewController(alert, animated: true, completion: nil)
    
    startNewRound()
    updateLabels()
  }
  
  @IBAction func sliderMoved(slider: UISlider) {
    currentValue = lroundf(slider.value)
  }

  func startNewRound() {
    targetValue = 1 + Int(arc4random_uniform(100))
    currentValue = 50
    slider.value = Float(currentValue)
  }

  func updateLabels() {
    targetLabel.text = String(targetValue)
  }
}