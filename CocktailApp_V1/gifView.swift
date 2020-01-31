//
//  gifView.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 27/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit
import SwiftyGif

class gifView: UIView {

    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet var contentView: UIView!

    @IBOutlet weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("gifView", owner: self, options: nil)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.frame = self.bounds
        do {
            let gif = try UIImage(gifName: "CocktailIntro.gif")
            self.gifImageView.setGifImage(gif,loopCount: 1)
            gifImageView.frame = contentView.bounds
            contentView.addSubview(gifImageView)
        } catch {
            print(error)
        }
    }
}
