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


    //let data = fetchResources


//
//    func fetchResources(masterView: MasterViewProtocol) {
//        let urlString = "http://dev.tapptic.com/test/json.php"
//        guard let url = URL(string: urlString) else { return }
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if(error != nil) {
//                print(error!.localizedDescription)
//                masterView.displayError(errorDescription: error!.localizedDescription)
//            }
//
//            guard let data = data else { return }
//
//            do {
//                let masterData = try JSONDecoder().decode([MasterData].self, from: data)
//
//                DispatchQueue.main.async {
//                    self.masterData = masterData
//                    masterView.reloadViewWithData(data: masterData)
//                }
//
//            } catch let jsonError {
//                print(jsonError)
//            }
//
//            }.resume()
//    }
////
////
//    func downloadDetails(detailView: DetailViewProtocol, selectedIndex: String) {
//        let urlString = "http://dev.tapptic.com/test/json.php?name=\(selectedIndex)"
//        guard let url = URL(string: urlString) else { return }
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if(error != nil) {
//                print(error!.localizedDescription)
//            }
//
//            guard let data = data else { return }
//            let a = DetailData.self
//            do {
//                let detailData = try JSONDecoder().decode(DetailData.self, from: data)
//
//                DispatchQueue.main.async {
//                    self.detailData = detailData
//                    detailView.setDownloadedLabel(data: detailData)
//                }
//
//            } catch let jsonError {
//                print(jsonError)
//            }
//
//            }.resume()
//    }
}
