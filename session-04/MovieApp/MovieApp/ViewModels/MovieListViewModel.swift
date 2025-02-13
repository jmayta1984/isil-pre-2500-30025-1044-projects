//
//  MovieListViewModel.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

import Foundation

class MovieListViewModel: ObservableObject {
    @Published private(set) var movies: [Movie] = []
    @Published private(set) var message = ""
    @Published private(set) var endpoint = APIEndpoint.popular
    
    let movieService = MovieService()

    
    func getMovies()  {
        movieService.getMovies(endpoint: endpoint.rawValue) { movies, message in
            
            DispatchQueue.main.async{
                if let movies = movies {
                    self.movies = movies
                }
                
                if let message = message {
                    self.message = message
                }
            }
           
        }
    }
    
    func updateEndpoint(endpoint: APIEndpoint) {
        self.endpoint = endpoint
        self.movies = []
        self.message = ""
        getMovies()
    }
}
