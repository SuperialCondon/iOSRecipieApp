//
//  addInstruction\ViewController.swift
//  RecipeApp
//
//  Created by Michael Condon on 11/19/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class addInstruction_ViewController: UIViewController {
    
    var recipesArr = Recipes()
    var recipe:Recipe!
    
    @IBOutlet weak var instructionText: UITextView!
    
    @IBAction func addInstruction(sender: AnyObject) {
        if instructionText.text != ""
        {
            let instruction = instructionText.text
            recipe.addInstruction(instruction)
            instructionText.text = ""
            let alertController = UIAlertController(title: ("Instruction Saved!"), message:
                "Now click done to return to your recipes or add some more instructions", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        else
        {
            let alertController = UIAlertController(title: ("Instruction not saved"), message:
                "You must enter an instruction inside the instruction text field then click the save button", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func Recipe_Complete(sender: AnyObject) {
        if recipe.instructions.count == 0
        {
            let alertController = UIAlertController(title: ("Recipe has no instructions"), message:
                "You must enter an instruction inside the instruction text field then click the save button", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        else
        {
        recipesArr.recipes.append(recipe)
        self.navigationController?.popToRootViewControllerAnimated(true)
        }
        
    }
   

}
