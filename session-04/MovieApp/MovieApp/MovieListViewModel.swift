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
    
    let movieService = MovieService()

    
    func getMovies()  {
        movieService.getMovies { movies, message in
            
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
}
