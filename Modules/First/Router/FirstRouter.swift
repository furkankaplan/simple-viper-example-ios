//
//  FirstRouter.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation
import UIKit

class FirstRouter: FirstRouterProtocol {
    
    func routeToSecondModule(from: FirstPresenterOutputProtocol?) {
        guard let view = from as? FirstView else { return }
        
        let secondView = SecondView()
        SecondRouter.createModule(viewReferance: secondView)
        
        view.navigationController?.pushViewController(secondView, animated: true)
    }
    
    static func createModule(viewReferance: FirstView) {
        let presenter: FirstPresenterProtocol & FirstInteractorOutputProtocol = FirstPresenter()
        
        viewReferance.presenter = presenter
        viewReferance.presenter?.router = FirstRouter()
        viewReferance.presenter?.view = viewReferance
        viewReferance.presenter?.interactor = FirstInteractor()
        viewReferance.presenter?.interactor?.presenter = presenter
    }
    
}
