//
//  FirstView.swift
//  simple-viper-example-ios
//
//  Created by Furkan Kaplan on 3.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import UIKit

class FirstView: UIViewController {

    var presenter: FirstPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func routeToSecondModuleButtonTapped(_ sender: Any) {
        self.presenter?.routeToSecondModuleButtonTapped()
    }
}

extension FirstView: FirstPresenterOutputProtocol {
    
    func firstListFetched(with data: String) {
        // show success message
    }
    
    func firstListFetchedFailed(with errorMessage: String) {
        // show error popup
    }
    
}
