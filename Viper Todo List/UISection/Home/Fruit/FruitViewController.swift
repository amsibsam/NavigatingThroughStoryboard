//
//  FruitViewController.swift
//  Viper Todo List
//
//  Created MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class FruitViewController: UIViewController, FruitViewProtocol {
	var presenter: FruitPresenterProtocol?
    var fruit: Fruit!

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    func showFruits(fruits: [Fruit]) {
        
    }
    
    func showLoading() {
        
    }
    
    func showError(message: String) {
        
    }
    
    func dismissLoading() {
        
    }
}
