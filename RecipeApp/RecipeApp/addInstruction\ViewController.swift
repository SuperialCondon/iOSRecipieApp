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
        if let instruction = instructionText.text{
            recipe.addInstruction(instruction)
            print (recipe.title)
            print(recipe.instructions)
            
        }
        instructionText.text = ""
        
    }
    
    @IBAction func Recipe_Complete(sender: AnyObject) {
        recipesArr.recipes.append(recipe)
        for i in recipesArr.recipes{
            print(i.title)
        }
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
   

}
