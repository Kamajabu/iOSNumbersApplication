//
//  AlertModule.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 22.01.2018.
//  Copyright © 2018 Kamajabu. All rights reserved.
//

import Foundation
import UIKit

protocol ViewWithAlert {
    func retryAction()
}

class AlertModule {
    func displayErrorMessage(details: String,
                             viewInterface: ViewWithAlert,
                             parentView: UIViewController) {
        let alert = UIAlertController(title: "Error",
                                      message: details,
                                      preferredStyle: .alert)

        let retryAction = UIAlertAction(title: "Retry",style: .default) { _ in
            viewInterface.retryAction()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)

        alert.addAction(retryAction)
        alert.addAction(cancelAction)

        parentView.present(alert, animated: true)
    }
}
