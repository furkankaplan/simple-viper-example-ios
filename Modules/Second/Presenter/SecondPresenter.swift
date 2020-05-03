//
//  SecondPresenter.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation

class SecondPresenter: SecondPresenterProtocol {
    
    var view: SecondPresenterOutputProtocol?
    var interactor: SecondInteractorProtocol?
    var router: SecondRouterProtocol?
 
}

extension SecondPresenter: SecondInteractorOutputProtocol {
    
    func secondListFetched(with data: String) {
        
    }
    
    func secondListFetchedFailed(with errorMessage: String) {
        
    }
    
}
