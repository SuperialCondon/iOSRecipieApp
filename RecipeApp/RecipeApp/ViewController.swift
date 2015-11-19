//
//  ViewController.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/16/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var recipe = Recipe()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let controller = segue.destinationViewController as? NameViewController {
//            controller.recipe = self.recipe
//        }
//    }

}

