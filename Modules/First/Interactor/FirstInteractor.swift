//
//  FirstInteractor.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import Foundation

class FirstInteractor: FirstInteractorProtocol {
    
    var presenter: FirstInteractorOutputProtocol?
    
    func fetchFirstList() {
        // do network process
        self.presenter?.firstListFetched(with: "success")
    }
    
}
