//
//  CocktailCell.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 29/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit

class CocktailCell: UITableViewCell {

    @IBOutlet weak var titleLabelView: UIView!
    @IBOutlet weak var cocktailImage: UIImageView!
    @IBOutlet weak var cocktailNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
