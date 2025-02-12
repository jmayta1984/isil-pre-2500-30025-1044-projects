//
//  MovieListView.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import SwiftUI

struct MovieListView: View {
    
    @State var movies: [Movie] = []
    
    let movieService = MovieService()
    
    var body: some View {
        List {
            ForEach(movies) { movie in
                HStack {
                    AsyncImage(
                        url: URL(string: movie.poster),
                        content: { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 135)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                        },
                        placeholder: {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 90, height: 135)

                        }
                    )
                    VStack (alignment: .leading) {
                        Text(movie.title)
                            .fontWeight(.bold)
                        Text(movie.overview)
                            .lineLimit(2)
                    }
                }
                
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(PlainListStyle())
        .onAppear {
            movieService.getMovies { movies, message in
                
                if let movies = movies {
                    self.movies = movies
                }
            }
        }
    }
}

#Preview {
    MovieListView()
}
