//
//  Mapper.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

struct Mapper {
    
    static func toMovie(response: MovieResponse) -> Movie {
        return Movie(id: response.id, title: response.title, poster: APIConstants.imageBaseURL + response.poster, overview: response.overview)
    }
}
