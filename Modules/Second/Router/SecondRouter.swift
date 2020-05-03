//
//  SecondRouter.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation

class SecondRouter: SecondRouterProtocol {
        
    func routeToFirstModule(from: SecondPresenterOutputProtocol?) {
        guard let view = from as? FirstView else { return }
        
        let firstView = FirstView()
        FirstRouter.createModule(viewReferance: firstView)
        
        view.navigationController?.pushViewController(firstView, animated: true)
    }
    
    static func createModule(viewReferance: SecondView) {
        let presenter: SecondPresenterProtocol & SecondInteractorOutputProtocol = SecondPresenter()
        
        viewReferance.presenter = presenter
        viewReferance.presenter?.router = SecondRouter()
        viewReferance.presenter?.view = viewReferance
        viewReferance.presenter?.interactor = SecondInteractor()
        viewReferance.presenter?.interactor?.presenter = presenter
    }
    
}
