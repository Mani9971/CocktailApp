//
//  CocktailController.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 29/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit
import SDWebImage

class CocktailController: UIViewController {

    var cocktails : CocktailData?
    
    @IBAction func xButtonPressed(_ sender: UIButton) {
        
    }
    @IBOutlet weak var cocktailTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cocktailTableView.delegate = self
        self.cocktailTableView.dataSource = self
        self.cocktailTableView.register(UINib(nibName: "CocktailCell", bundle: nil), forCellReuseIdentifier: "CocktailCell")

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

extension CocktailController : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktails?.drinks.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CocktailCell", for: indexPath) as!
        CocktailCell
        cell.cocktailNameLabel.text = cocktails?.drinks[indexPath.row].strDrink
        cell.cocktailImage.sd_setImage(with: URL(string: (cocktails?.drinks[indexPath.row].strDrinkThumb) ?? "placeholder.png"), placeholderImage: UIImage(named: "placeholder.png"))
        return cell
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
                let vc = sb.instantiateViewController(withIdentifier: "CocktailDetailController") as! CocktailDetailController
                vc.cocktail = cocktails?.drinks[indexPath.row]
                self.present(vc, animated: true, completion: nil)
    }
    
}
