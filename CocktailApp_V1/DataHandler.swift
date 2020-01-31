//
//  DataHadnler.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 28/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit

protocol DataHandlerDelegate {
    func didUpdateCocktails(cocktails: CocktailData)
    func didFailWithError(error: Error)
}

struct DataHandler {
    let cocktailURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
    var delegate: DataHandlerDelegate?
    
    func getData(drink: String) {
        let urlString = "\(cocktailURL)\(drink)"
        let urlStringAbsolute = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        perfrormRequest(urlString: urlStringAbsolute!)
    }
    
    func perfrormRequest(urlString : String) {
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let cocktails = self.parseJSON(cocktailData: safeData){
                        self.delegate?.didUpdateCocktails(cocktails: cocktails)
                        
                    }
                }
            }
            
            task.resume()
        }
    }
    
    func parseJSON(cocktailData :Data) -> CocktailData? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CocktailData.self, from:cocktailData)
            return decodedData
        } catch{
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
