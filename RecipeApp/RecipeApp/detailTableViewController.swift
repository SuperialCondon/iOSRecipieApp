//
//  detailTableViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/30/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class detailTableViewController: UITableViewController {
    var recipe=Recipe()
    
    @IBAction func BackToRecipe(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recipe.title)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
        
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "Ingredients"
        }
        else if section == 1
        {
            return "Instructions"
        }
        return "error"
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section == 0){
        return recipe.ingredients.count
        }
        else
        {
            return recipe.instructions.count
        }
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell", forIndexPath: indexPath)
        if (indexPath.section == 0){
            let ingredient = recipe.ingredients[indexPath.row]
            cell.textLabel?.text = ingredient.name
            cell.detailTextLabel?.text = "Quantity: \(ingredient.quantity) \(ingredient.measurement)"
        }
        else{
            let instruction = recipe.instructions[indexPath.row]
            cell.textLabel?.text = "\(indexPath.row + 1). \(instruction)"
            cell.detailTextLabel?.text = ""
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
