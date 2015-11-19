//
//  ingViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/17/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class ingViewController: UIViewController {
    
    var recipe = Recipe()
    @IBOutlet weak var IngredientName: UITextField!
    
    
    @IBOutlet weak var Ingquantity: UITextField!
    
    
    
   
    @IBAction func saveING(sender: AnyObject) {
        if let name = IngredientName.text, let IngQuantity = Ingquantity.text {
            if let quantity = Int(IngQuantity){
                recipe.addIngredient(name, newquantity: quantity)
            }
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
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//    }
    

}
