//
//  FruitListPresenter.swift
//  Viper Todo List
//
//  Created MTMAC16 on 10/08/18.
//  Copyright © 2018 bism. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class FruitListPresenter: FruitListPresenterProtocol {
    weak private var view: FruitListViewProtocol?
    var interactor: FruitListInteractorInputProtocol?
    private let router: FruitListWireframeProtocol

    init(interface: FruitListViewProtocol, interactor: FruitListInteractorInputProtocol?, router: FruitListWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    func getFruitList() {
        view?.showLoading()
        interactor?.getFruitList()
    }
    
    func showFruitDetail(for fruit: Fruit) {
        if let viewController = view {
            router.showFruitDetail(with: fruit, from: viewController)
        }
    }
}


extension FruitListPresenter: FruitListInteractorOutputProtocol {
    func successGetFruitList(with fruits: [Fruit]) {
        view?.showFruitList(with: fruits)
        view?.dismissLoading()
    }
    
    func onError(with message: String) {
        
    }
    
    
}
