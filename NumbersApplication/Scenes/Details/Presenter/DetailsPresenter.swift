//
//  DetailsPresenter.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright (c) 2018 Kamajabu. All rights reserved.
//
//  This file was generated by the MVP Templates created by Kamil Buczel//

import Foundation

protocol DetailsPresenter: class {
    init (view: DetailsView,
          apiGateway: ApiGateway,
          deserializer: Deserializer,
          masterIndex: String?,
          masterLowResImageUrl: String?)

    func viewDidLoad()
          
}