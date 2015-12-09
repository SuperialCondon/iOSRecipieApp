//
//  Recipe.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/17/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import Foundation
class Recipe {
    var title: String = ""
    var ingredients = [Ingredient]()
    var instructions:[String] = []
    func addIngredient(newname: String, newquantity: Float, newmeasurement: String) {
        ingredients.append(Ingredient(name: newname, quantity: newquantity, measurement: newmeasurement))
    }
    var numberOfInstructions = 0;
    func addInstruction(instruction: String){
        numberOfInstructions++
        instructions.append(instruction)
    }
}
class Recipes {
    var recipes = [Recipe]()
}