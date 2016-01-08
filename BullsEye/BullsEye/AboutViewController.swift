//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Priyansh Agarwal on 25/12/15.
//  Copyright © 2015 Priyansh Agarwal. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text=" \n\n" + " ￼￼*** Bull’s Eye ***" + " \n\n" + "Welcome to the awesome game of Bull’s Eye where you can win points and fame by dragging a slider. Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score. Enjoy!"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func close(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
