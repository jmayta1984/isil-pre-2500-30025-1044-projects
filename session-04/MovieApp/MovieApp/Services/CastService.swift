//
//  CastService.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

import Foundation

class CastService {
    func getCast(id: Int, completion: @escaping ([Cast]?, String?) -> Void) {
        
        let url = APIConstants.baseURL + String(id) + "/credits" + APIConstants.apiKey
        
        HttpRequestHelper().GET(url: url) { success, data, message in
            if (success) {
                
                guard let data = data else {
                    completion(nil, message ?? "Error: no data")
                    return
                }
                
                do {
                    let wrapper = try JSONDecoder().decode(CastWrapper.self, from: data)
                    let cast = wrapper.cast.map {
                        Mapper.toCast(response: $0)
                    }
                    completion(cast, nil)
                } catch let error {
                    completion(nil, error.localizedDescription )
                }
            } else {
                completion(nil, message ?? "Error: no response")
            }
        }
    }
}
