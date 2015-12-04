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
    
    @IBAction func saveTitle(sender: AnyObject) {
        if let recipeTitle = recipetitle.text {
            recipe.title = recipeTitle
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
