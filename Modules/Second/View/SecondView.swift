//
//  SecondView.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import UIKit

class SecondView: UIViewController {

    var presenter: SecondPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension SecondView: SecondPresenterOutputProtocol {
    
    func secondListFetched(with data: String) {
        
    }
    
    func secondListFetchedFailed(with errorMessage: String) {
        
    }
    
}
