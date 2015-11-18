//
//  Recipe.swift
//  RecipeApp
//
//  Created by Adele Bible on 11/17/15.
//  Copyright © 2015 Andrew Candelaresi. All rights reserved.
//

import Foundation
class Recipe {
    var ingredients = [Ingredient]()
    var instrution:[String] = []
    func addIngredient(newname: String, newquantity: Int) {
        ingredients.append(Ingredient(name: newname, quantity: newquantity))
    }
}