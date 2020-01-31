//
//  cocktailData.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 28/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit

struct Cocktails :Codable{
    let strDrink:String?
    let strCategory:String?
    let strIBA:String?
    let strAlcoholic:String?
    let strGlass:String?
    let strDrinkThumb:String?
    let strInstructions:String?
    let strIngredient1:String?
    let strIngredient2:String?
    let strIngredient3:String?
    let strIngredient4:String?
    let strIngredient5:String?
    let strIngredient6:String?
    let strIngredient7:String?
    let strIngredient8:String?
    let strIngredient9:String?
    let strIngredient10:String?
    let strIngredient11:String?
    let strIngredient12:String?
    let strIngredient13:String?
    let strIngredient14:String?
    let strIngredient15:String?
    let strMeasure1:String?
    let strMeasure2:String?
    let strMeasure3:String?
    let strMeasure4:String?
    let strMeasure5:String?
    let strMeasure6:String?
    let strMeasure7:String?
    let strMeasure8:String?
    let strMeasure9:String?
    let strMeasure10:String?
    let strMeasure11:String?
    let strMeasure12:String?
    let strMeasure13:String?
    let strMeasure14:String?
    let strMeasure15:String?

    func getIngredientsAndMeasures()->String {
        
        var ingredients :String = ""
            
        if(strIngredient1 != nil && strMeasure1 != nil) {
            ingredients.append(strMeasure1! + " " + strIngredient1! + "," + " ")
        }
        if(strIngredient2 != nil && strMeasure2 != nil) {
            ingredients.append(strMeasure2! + " " + strIngredient2! + "," + " ")
        }
        if(strIngredient3 != nil && strMeasure3 != nil) {
            ingredients.append(strMeasure3! + " " + strIngredient3! + "," + " ")
        }
        if(strIngredient4 != nil && strMeasure4 != nil) {
            ingredients.append(strMeasure4! + " " + strIngredient4! + "," + " ")
        }
        if(strIngredient5 != nil && strMeasure5 != nil) {
            ingredients.append(strMeasure5! + " " + strIngredient5! + "," + " ")
        }
        if(strIngredient6 != nil && strMeasure6 != nil) {
            ingredients.append(strMeasure6! + " " + strIngredient6! + "," + " ")
        }
        if(strIngredient7 != nil && strMeasure7 != nil) {
            ingredients.append(strMeasure7! + " " + strIngredient7! + "," + " ")
        }
        if(strIngredient8 != nil && strMeasure8 != nil) {
            ingredients.append(strMeasure8! + " " + strIngredient8! + "," + " ")
        }
        if(strIngredient9 != nil && strMeasure9 != nil) {
            ingredients.append(strMeasure9! + " " + strIngredient9! + "," + " ")
        }
        if(strIngredient10 != nil && strMeasure10 != nil) {
            ingredients.append(strMeasure10! + " " + strIngredient10! + "," + " ")
        }
        
        if(strIngredient11 != nil && strMeasure11 != nil) {
            ingredients.append(strMeasure11! + " " + strIngredient11! + "," + " ")
        }
        if(strIngredient12 != nil && strMeasure12 != nil) {
            ingredients.append(strMeasure12! + " " + strIngredient12! + "," + " ")
        }
        if(strIngredient13 != nil && strMeasure13 != nil) {
            ingredients.append(strMeasure13! + " " + strIngredient13! + "," + " ")
        }
        if(strIngredient14 != nil && strMeasure14 != nil) {
            ingredients.append(strMeasure14! + " " + strIngredient14! + "," + " ")
        }
        if(strIngredient15 != nil && strMeasure15 != nil) {
            ingredients.append(strMeasure15! + " " + strIngredient15! + "," + " ")
        }
        
        ingredients.removeLast(2)
        ingredients.append(".")
        return ingredients
            
        }
    
    }


struct CocktailData:Codable{
        
    let drinks : [Cocktails]
        
    }
