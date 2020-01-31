//
//  CocktailDetailControllerViewController.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 29/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit
import SDWebImage

class CocktailDetailController: UIViewController {
    
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ibaLabel: UILabel!
    @IBOutlet weak var alchocolicLabel: UILabel!
    @IBOutlet weak var glassTypeLabel: UILabel!
    @IBOutlet weak var ingredientsAndMeasuresLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
//    let strDrink:String?
//    let strCategory:String?
        //instructions
//    let strIBA:String?
//    let strAlcoholic:String?
//    let strGlass:String?
//    let strDrinkThumb:String?

    
    var cocktail : Cocktails?

    override func viewDidLoad() {
        super.viewDidLoad()
        drinkName.text = cocktail?.strDrink
        drinkImage.sd_setImage(with: URL(string: (cocktail?.strDrinkThumb) ?? "placeholder.png"), placeholderImage: UIImage(named: "placeholder.png"))
        if let cocktailCategory = cocktail?.strCategory {
        categoryLabel.text = ("Category: \(cocktailCategory)")
        }else {
            categoryLabel.text = ""
        }
        if let cocktailIBA = cocktail?.strIBA {
            ibaLabel.text = ("IBA: \(cocktailIBA)")
        } else {
            ibaLabel.text = ("")
        }
        if let cocktailAlcoholic = cocktail?.strAlcoholic {
        alchocolicLabel.text = ("Type: \(cocktailAlcoholic)")
        }else {
            alchocolicLabel.text = ""
        }
        if let glassType = cocktail?.strGlass
        {
            glassTypeLabel.text = ("Glass: \(glassType)")
        } else {
            glassTypeLabel.text = ""
        }
        if let instructions = cocktail?.strInstructions {
            descriptionLabel.text = instructions
        }
        else {
            descriptionLabel.text = "No instructions."
        }
        if let ingredientsAndMeasures = cocktail?.getIngredientsAndMeasures(){
            ingredientsAndMeasuresLabel.text = "Ingredients:\n \(ingredientsAndMeasures)"
        }else {
            ingredientsAndMeasuresLabel.text = "Ingredients: No information"
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
