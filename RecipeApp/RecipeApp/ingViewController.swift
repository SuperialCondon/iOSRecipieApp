//
//  ingViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/17/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class ingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var recipe:Recipe!
    var recipesArr = Recipes()
    var name = ""
    var quantity = 0
    
    var measurements = [String]()
    var unit = ""
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return measurements.count
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let measurementSelected = pickerView.delegate?.pickerView!(pickerView, titleForRow: row, forComponent: component)
        unit = measurementSelected!
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return measurements[row]
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBOutlet weak var IngredientName: UITextField!
    
    @IBOutlet weak var Ingquantity: UITextField!
    
   
    @IBAction func saveING(sender: AnyObject) {
        if  IngredientName.text != ""
        {
            name = IngredientName.text!
            if Ingquantity.text != ""
            {
                quantity = Int(Ingquantity.text!)!
                recipe.addIngredient(name, newquantity: quantity, newmeasurement: unit)
                let alertController = UIAlertController(title: ("\(name) was saved!"), message:
                    "Now click add instructions to continue building your recipe or add some more ingredietnts", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
                self.presentViewController(alertController, animated: true, completion: nil)
                print(recipe.title)
                print(recipe.ingredients[0].measurement)
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
        measurements = [
            "Teaspoons", "Cups", "Milliliters", "Tablespoons", "Pints","Liters","Ounces","Quarts","Grams",
            "Fluid Ounces",	"Gallons",	"Pounds", "Slices", "Units"]
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
