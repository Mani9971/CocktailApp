//
//  ViewController.swift
//  CocktailApp_V1
//
//  Created by Manuel Pleš on 27/01/2020.
//  Copyright © 2020 Manuel Ples. All rights reserved.
//

import UIKit
import SwiftyGif
class ViewController: UIViewController {

    
    @IBOutlet var myGifView: gifView!
    
    @IBOutlet weak var searchView: SearchView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myGifView)
        self.myGifView.gifImageView.delegate = self
        self.myGifView.titleLabel.fadeIn()
        self.searchView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        myGifView.gifImageView.startAnimatingGif()
        
    }
    
}

extension ViewController : SwiftyGifDelegate {
    
    func gifDidStop(sender: UIImageView) {
        self.myGifView.removeFromSuperview()
        view.addSubview(searchView)
    }
}
//MARK: titleLabelFadeInEffect

extension UILabel{
    func fadeIn(duration: TimeInterval = 2.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
    self.alpha = 1.0
    }, completion: completion)  }
}

extension ViewController:SearchViewDelegate {
    func didGetData(cocktails: CocktailData) {
        DispatchQueue.main.async {
            let sb = UIStoryboard(name: "Main", bundle: nil)
    
            let vc = sb.instantiateViewController(withIdentifier: "CocktailController") as! CocktailController
            vc.cocktails = cocktails
            self.present(vc, animated: true, completion: nil)
        }
    }
}
