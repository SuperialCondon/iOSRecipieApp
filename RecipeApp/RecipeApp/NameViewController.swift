//
//  NameViewController.swift
//  RecipeApp
//
//  Created by Michael Condon on 11/19/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    var recipe = Recipe()

    @IBOutlet weak var recipetitle: UITextField!
    
    @IBAction func saveTitle(sender: AnyObject) {
        if let recipeName = recipetitle.text {
            recipe.name = recipeName
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
        if let controller = segue.destinationViewController as? NameViewController {
            controller.recipe = self.recipe
            
        }

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
