//
//  Recipe.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/17/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import Foundation
class Recipe {
    var name: String = ""
    var ingredients = [Ingredient]()
    var instructions:[String] = []
    func addIngredient(newname: String, newquantity: Int) {
        ingredients.append(Ingredient(name: newname, quantity: newquantity))
    }
    var numberOfInstructions = 0;
    func addInstruction(instruction: String){
        numberOfInstructions++
        instructions.append(instruction)
    }
}