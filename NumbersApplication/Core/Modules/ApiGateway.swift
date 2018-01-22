//
//  ApiGateway.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright © 2018 Kamajabu. All rights reserved.
//

import Foundation

protocol ApiRequestPresenter {
    func displayError(error: Error)
    func downloadSuccess(data: Data)
}

protocol GatewayProtocol {
    func fetchResources(urlString: String,
                        completionHandler: @escaping ((Data?, Error?) -> ()))
}

class ApiGateway: GatewayProtocol {
    var masterData: [MasterData]?
    var detailData: DetailData?

        func fetchResources(urlString: String,
                            completionHandler: @escaping ((Data?, Error?) -> ())) {
            guard let url = URL(string: urlString) else { return }
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completionHandler(nil, error)
                }

                if let data = data  {
                    completionHandler(data, nil)
                }
            }.resume()
        }
}
