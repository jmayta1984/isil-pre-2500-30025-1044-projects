//
//  MovieService.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import Foundation

class MovieService {
    
    func getMovies(completion: @escaping ([Movie]?, String?) -> Void ) {
        let url = APIConstants.baseURL + APIConstants.category + APIConstants.apiKey
        HttpRequestHelper().GET(url: url) { success, data, message in
            if (success) {
                
                guard let data = data else {
                    completion(nil, message ?? "Error: no data")
                    return
                }
                
                do {
                    let wrapper = try JSONDecoder().decode(MovieWrapper.self, from: data)
                    let movies = wrapper.movies.map {
                        Mapper.toMovie(response: $0)
                    }
                    completion(movies, nil)
                } catch let error {
                    completion(nil, error.localizedDescription)
                }
            } else {
                completion(nil, message ?? "Error: no response")
            }
        }
    }
}
