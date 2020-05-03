//
//  SecondProtocols.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation

protocol SecondPresenterProtocol {
    
    var view: SecondPresenterOutputProtocol? { get set }
    var interactor: SecondInteractorProtocol? { get set }
    var router: SecondRouterProtocol? { get set }
 
}

protocol SecondPresenterOutputProtocol {
    
    func secondListFetched(with data: String)
    func secondListFetchedFailed(with errorMessage: String)
    
}

protocol SecondRouterProtocol {
    
    func routeToFirstModule(from: SecondPresenterOutputProtocol?)
    
}

protocol SecondInteractorProtocol {
    
    var presenter: SecondInteractorOutputProtocol? { get set }
    
    func fetchSecondList()
    
}

protocol SecondInteractorOutputProtocol {
    
    func secondListFetched(with data: String)
    func secondListFetchedFailed(with errorMessage: String)
    
}
