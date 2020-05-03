//
//  FirstPresenter.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation

class FirstPresenter: FirstPresenterProtocol {
    
    var view: FirstPresenterOutputProtocol?
    var interactor: FirstInteractorProtocol?
    var router: FirstRouterProtocol?
    
    func routeToSecondModuleButtonTapped() {
        router?.routeToSecondModule(from: view!)
    }
}

extension FirstPresenter: FirstInteractorOutputProtocol {
    
    func firstListFetched(with data: String) {
        self.view?.firstListFetched(with: data)
    }
    
    func firstListFetchedFailed(with errorMessage: String) {
        self.view?.firstListFetchedFailed(with: errorMessage)
    }
    
}
