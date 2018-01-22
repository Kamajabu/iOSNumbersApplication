//
//  InitialContainerViewController.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright © 2018 Kamajabu. All rights reserved.
//

import UIKit

class InitialContainerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let initialOrientation = UIApplication.shared.statusBarOrientation
        configureTrait(isLandscape: initialOrientation.isLandscape)
    }

    func configureTrait(isLandscape: Bool) {
        //        guard UIDevice.current.userInterfaceIdiom == .pad else { return }

        if (isLandscape) {
            let traitOverride = UITraitCollection(horizontalSizeClass: .regular)

            for vc in childViewControllers {
                setOverrideTraitCollection(traitOverride, forChildViewController: vc)
            }

        } else {
            let traitOverride = UITraitCollection(horizontalSizeClass: .compact)

            for vc in childViewControllers {
                setOverrideTraitCollection(traitOverride, forChildViewController: vc)

            }
        }
    }

    override func viewWillTransition(to size: CGSize,
                                     with coordinator: UIViewControllerTransitionCoordinator) {

        let orientationAfterTransition = UIDevice.current.orientation
        configureTrait(isLandscape: orientationAfterTransition.isLandscape)
    }
}
