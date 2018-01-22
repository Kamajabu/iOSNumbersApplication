//
//  DetailsConfigurator.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright (c) 2018 Kamajabu. All rights reserved.
//
//  This file was generated by the MVP Templates created by Kamil Buczel//

import Foundation

struct DetailsConsts {
    static let detailEndpoint = "http://dev.tapptic.com/test/json.php?name="
}

protocol DetailsConfigurator {
    func configure(detailsViewController: DetailsViewController)
}

class DetailsConfiguratorImplementation: DetailsConfigurator {
    let masterIndex: String?
    let masterLowResImageUrl: String?

    init(masterIndex: String?, masterLowResImageUrl: String?) {
        self.masterIndex = masterIndex
        self.masterLowResImageUrl = masterLowResImageUrl

    }

    func configure(detailsViewController: DetailsViewController) {
        let apiGateway = ApiGateway()
        let deserializer = Deserializer()
        
        detailsViewController.presenter = DetailsPresenterImplementation(
            view: detailsViewController,
            apiGateway: apiGateway,
            deserializer: deserializer,
            masterIndex: masterIndex,
            masterLowResImageUrl: masterLowResImageUrl)
    }
}