//
//  NameViewController.swift
//  RecipeApp
//
//  Created by Michael Condon on 11/19/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    var recipesArr = Recipes()
    var recipe = Recipe()

    @IBOutlet weak var recipetitle: UITextField!
    
    @IBAction func saveTitle(sender: AnyObject)
    {
        if recipetitle.text != ""
        {
            if let recipeTitle = recipetitle.text
            {
                recipe.title = recipeTitle
                if recipeTitle == ""
                {
                    let alertController = UIAlertController(title: ("\(recipeTitle) was saved!"), message:
                    "Now lets add some ingredients", preferredStyle: UIAlertControllerStyle.Alert)
                    alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
                    self.presentViewController(alertController, animated: true, completion: nil)
                }
            }
        }
        else
        {
            let alertController = UIAlertController(title: ("Text field is empty"), message:
                "You must enter a title before saving the title.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let controller = segue.destinationViewController as? ingViewController {
            controller.recipe = self.recipe
            controller.recipesArr = self.recipesArr
            
        }

    }

    

}
