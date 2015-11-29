//
//  ViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/16/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var recipes = [Recipe]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let exampleBurger = Recipe()
        exampleBurger.name = "Example: Simple Cheeseburger"
        exampleBurger.addIngredient("Bun", newquantity: 2)
        exampleBurger.addIngredient("Ground Beef Patty", newquantity: 1)
        exampleBurger.addIngredient("American Cheese Slice", newquantity: 1)
        exampleBurger.addInstruction("Grill beef patty until interior of patty has little to no pink. Flip patty periodically.")
        exampleBurger.addInstruction("Place cheese slice on patty. Leave on grill until cheese has melted")
        exampleBurger.addInstruction("Remove patty with cheese, and place between the two buns")
        let exampleGrilledCheese = Recipe()
        exampleGrilledCheese.name = "Example: Grilled Cheese"
        exampleGrilledCheese.addIngredient("Bread Slice", newquantity: 2)
        exampleGrilledCheese.addIngredient("American Cheese Slice", newquantity: 2)
        exampleGrilledCheese.addIngredient("Unsalted Butter (teaspoon)", newquantity: 2)
        exampleGrilledCheese.addInstruction("Heat pan on stove and low/medium setting for 3 to 4 minutes")
        exampleGrilledCheese.addInstruction("Place butter on pan until melted.")
        exampleGrilledCheese.addInstruction("Place bread slices on melted butter.")
        exampleGrilledCheese.addInstruction("After 2 to 3 minutes place cheese slice on each slice of bread. Move one slice onto the other so that cheese slices are touching")
        exampleGrilledCheese.addInstruction("Wait another 2 minutes, filpping sandwich after 1 minute")
        recipes.append(exampleBurger)
        recipes.append(exampleGrilledCheese)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let row = indexPath.row
        let recipeTitle = recipes[row]
        
        cell.textLabel?.text = recipeTitle.name
        return cell
    }
}

