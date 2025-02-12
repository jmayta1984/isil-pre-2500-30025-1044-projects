//
//  MovieResponse.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import Foundation

struct MovieWrapper: Decodable {
    let movies: [MovieResponse]
    
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}

struct MovieResponse: Decodable {
    let id: Int
    let title: String
    let poster: String
    let overview: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case poster = "poster_path"
        case overview
    }
}
