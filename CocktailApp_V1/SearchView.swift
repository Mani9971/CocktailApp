//
//  SearchView.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 28/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    var dataHandler = DataHandler()
    var delegate:SearchViewDelegate?
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBAction func showAllButtonPressed(_ sender: UIButton) {
            dataHandler.getData(drink: "")
               
    }
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        if searchTextField.text?.isEmpty == false {
            dataHandler.getData(drink: searchTextField.text!)
        }else{
            searchTextField.placeholder="The search field can not be empty!"
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SearchView", owner: self, options: nil)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.frame = self.bounds
        dataHandler.delegate = self
    }

}

extension SearchView : DataHandlerDelegate
{
    func didUpdateCocktails(cocktails: CocktailData) {
        self.delegate?.didGetData(cocktails: cocktails)
    }
    
    func didFailWithError(error: Error) {
        DispatchQueue.main.async {
            self.searchTextField.text = ""
            self.searchTextField.placeholder = "No results found"
        }
    }

}

protocol SearchViewDelegate : class{
    func didGetData(cocktails: CocktailData)
}
