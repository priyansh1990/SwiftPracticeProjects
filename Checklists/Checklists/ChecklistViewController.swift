//
//  ChecklistViewController.swift
//  Checklists
//
//  Created by Priyansh Agarwal on 30/12/15.
//  Copyright © 2015 Priyansh Agarwal. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        tableView.rowHeight = 44
        
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return 50
    }

    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem", forIndexPath: indexPath)
        
        let label = tableView.viewWithTag(1000) as! UILabel
        
        
        switch indexPath.row % 5
        {
        case 0:
            label.text = "Walk the dog"
        case 1:
            label.text = "Brush my teeth"
        case 2:
            label.text = "Learn iOS development"
        case 3:
            label.text = "Soccer practice"
        case 4:
            label.text = "Eat ice cream"
        default:
            label.text = "Lear Swift"
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if let cell = tableView.cellForRowAtIndexPath(indexPath)
        {
            if cell.accessoryType == .None
            {
                cell.accessoryType = .Checkmark
            }
            else
            {
                cell.accessoryType = .None
            }
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
