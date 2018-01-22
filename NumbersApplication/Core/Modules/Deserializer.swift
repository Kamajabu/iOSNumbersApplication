//
//  Deserializer.swift
//  NumbersApplication
//
//  Created by Kamil Buczel on 21.01.2018.
//  Copyright © 2018 Kamajabu. All rights reserved.
//

import Foundation

protocol DeserializerProtocol {
    func decodeData<T: Decodable>(data: Data, dataType: T.Type,
                                  Completion decoded: @escaping ((T) -> ()))
}

class Deserializer: DeserializerProtocol {
    func decodeData<T: Decodable>(data: Data, dataType: T.Type,
                                  Completion decoded: @escaping ((T) -> ())) {
        do {
            let decodedData = try JSONDecoder().decode(dataType, from: data)
            decoded(decodedData)
        } catch let jsonError {
            print(jsonError)
        }
    }
}
