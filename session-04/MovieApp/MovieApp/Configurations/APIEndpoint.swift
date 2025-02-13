//
//  APIEndpoint.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

enum APIEndpoint: String, CaseIterable {
    case popular = "popular"
    case topRated = "top_rated"
    case upcoming = "upcoming"
    case nowPlaying = "now_playing"
    
    var displayName: String {
        switch self {
        case .popular:
            return "Popular"
        case .topRated:
            return "Top rated"
        case .upcoming:
            return "Upcoming"
        case .nowPlaying:
            return "Now playing"
        }
        
    }

}
