//
//  MasterPresenter.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright (c) 2018 Kamajabu. All rights reserved.
//
//  This file was generated by the MVP Templates created by Kamil Buczel//

import Foundation

protocol MasterPresenter: class {
    var masterDataArray: [MasterData] { get set }

    var selectedIndexPath: IndexPath? { get set }

    init (view: MasterView,
          apiGateway: ApiGateway,
          deserializer: Deserializer)

    func viewDidLoad()

    func configureCell(cell: MasterTableViewCell, row: Int)

    func prepareDestinationController(controller: DetailsViewController, selectedIndex: IndexPath)

    func retryFetch()

    func selectCurrentlyViewedDetailOnList()

    func checkIfInitialItemNeedsToBeSet()
}
