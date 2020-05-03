//
//  FirstProtocols.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation

protocol FirstPresenterProtocol {
    
    var view: FirstPresenterOutputProtocol? { get set }
    var interactor: FirstInteractorProtocol? { get set }
    var router: FirstRouterProtocol? { get set }
 
    func routeToSecondModuleButtonTapped()
}

protocol FirstPresenterOutputProtocol {
    
    func firstListFetched(with data: String)
    func firstListFetchedFailed(with errorMessage: String)
    
}

protocol FirstRouterProtocol {
    
    func routeToSecondModule(from: FirstPresenterOutputProtocol?)
    
}

protocol FirstInteractorProtocol {
    
    var presenter: FirstInteractorOutputProtocol? { get set }
    
    func fetchFirstList()
    
}

protocol FirstInteractorOutputProtocol {
    
    func firstListFetched(with data: String)
    func firstListFetchedFailed(with errorMessage: String)
    
}
