//
//  ingViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/17/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class ingViewController: UIViewController {
    
    var recipe:Recipe!
    var recipesArr = Recipes()
    var name = ""
    var quantity = 0
    
    @IBOutlet weak var IngredientName: UITextField!
    
    @IBOutlet weak var Ingquantity: UITextField!
    
   
    @IBAction func saveING(sender: AnyObject) {
        if  IngredientName.text != ""
        {
            name = IngredientName.text!
            if Ingquantity.text != ""
            {
                quantity = Int(Ingquantity.text!)!
                recipe.addIngredient(name, newquantity: quantity)
                let alertController = UIAlertController(title: ("\(name) was saved!"), message:
                    "Now click add instructions to continue building your recipe or add some more ingredietnts", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
                self.presentViewController(alertController, animated: true, completion: nil)
                IngredientName.text = ""
                Ingquantity.text = ""
            }
            else
            {
                let alertController = UIAlertController(title: ("You must add a quantity before saving"), message:
                    "", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }
        else
        {
            let alertController = UIAlertController(title: ("You must add a name before saving"), message:
                "", preferredStyle: UIAlertControllerStyle.Alert)
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
        if let controller = segue.destinationViewController as? addInstruction_ViewController {
            controller.recipe = self.recipe
            controller.recipesArr = self.recipesArr
            
        }
        
    }
    
    @IBAction func addInstructionsPressed(sender: AnyObject) {
        if name != "" && quantity != 0{
            performSegueWithIdentifier("toaddint", sender: self)
            name = ""
            quantity = 0
        }
        else
        {
            let alertController = UIAlertController(title: ("Ingredient not saved"), message:
                "You must enter a name and a quantity for the ingredient then save it before adding instructions", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//    }
    

}
