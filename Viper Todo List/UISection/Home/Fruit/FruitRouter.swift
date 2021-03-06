//
//  FruitRouter.swift
//  Viper Todo List
//
//  Created MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class FruitRouter: FruitWireframeProtocol {

    weak var viewController: UIViewController?

    static func createModule(with fruit: Fruit) -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = FruitViewController()
        view.fruit = fruit
        let interactor = FruitInteractor()
        let router = FruitRouter()
        let presenter = FruitPresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}
