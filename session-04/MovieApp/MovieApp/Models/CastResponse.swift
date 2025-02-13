//
//  CastResponse.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

struct CastWrapper: Decodable {
    let cast: [CastResponse]
}

struct CastResponse: Decodable {
    let id: Int
    let name: String
    let character: String
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case character
        case poster = "profile_path"
    }
}
