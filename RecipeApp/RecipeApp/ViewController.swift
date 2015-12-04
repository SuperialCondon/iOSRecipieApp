//
//  ViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/16/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var recipesArr = Recipes()
    var clickedCell = 0
    
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let exampleBurger = Recipe()
        exampleBurger.title = "Example: Simple Cheeseburger"
        exampleBurger.addIngredient("Bun", newquantity: 2)
        exampleBurger.addIngredient("Ground Beef Patty", newquantity: 1)
        exampleBurger.addIngredient("American Cheese Slice", newquantity: 1)
        exampleBurger.addInstruction("Grill beef patty until interior of patty has little to no pink. Flip patty periodically.")
        exampleBurger.addInstruction("Place cheese slice on patty. Leave on grill until cheese has melted")
        exampleBurger.addInstruction("Remove patty with cheese, and place between the two buns")
        let exampleGrilledCheese = Recipe()
        exampleGrilledCheese.title = "Example: Grilled Cheese"
        exampleGrilledCheese.addIngredient("Bread Slice", newquantity: 2)
        exampleGrilledCheese.addIngredient("American Cheese Slice", newquantity: 2)
        exampleGrilledCheese.addIngredient("Unsalted Butter (teaspoon)", newquantity: 2)
        exampleGrilledCheese.addInstruction("Heat pan on stove and low/medium setting for 3 to 4 minutes")
        exampleGrilledCheese.addInstruction("Place butter on pan until melted.")
        exampleGrilledCheese.addInstruction("Place bread slices on melted butter.")
        exampleGrilledCheese.addInstruction("After 2 to 3 minutes place cheese slice on each slice of bread. Move one slice onto the other so that cheese slices are touching")
        exampleGrilledCheese.addInstruction("Wait another 2 minutes, filpping sandwich after 1 minute")
        recipesArr.recipes.append(exampleBurger)
        recipesArr.recipes.append(exampleGrilledCheese)
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesArr.recipes.count
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let row = indexPath.row
        let recipeTitle = recipesArr.recipes[row]
        
        
        
        cell.textLabel?.text = recipeTitle.title
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier{
            if identifier == "addRecipe"{
                if let controller = segue.destinationViewController as? NameViewController {
                    controller.recipesArr = self.recipesArr
                }
            }
            else if identifier == "cell"{
                if let controller = segue.destinationViewController as? detailTableViewController {
                    let cellNUM = tableView.indexPathForCell(sender as! UITableViewCell)
                    controller.recipe = self.recipesArr.recipes[cellNUM!.row]
                }
            }
            
                
            
        }
        
        
        if let controller = segue.destinationViewController as? NameViewController {
            controller.recipesArr = self.recipesArr
            
        }
    }
    
  
  
  
}

