//
//  MasterView.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright (c) 2018 Kamajabu. All rights reserved.
//
//  This file was generated by the MVP Templates created by Kamil Buczel//

import UIKit

protocol MasterView: class {
    func displayErrorMessage(details: String)

    func reloadCollection()

    func selectMasterRow(_ indexPath: IndexPath)
}
