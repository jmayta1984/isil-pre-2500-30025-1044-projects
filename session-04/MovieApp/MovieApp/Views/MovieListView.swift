//
//  MovieListView.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import SwiftUI

struct MovieListView: View {
    @StateObject var viewModel = MovieListViewModel()
    
    
    var body: some View {
        List {
            ForEach(viewModel.movies) { movie in
                NavigationLink {
                    MovieDetailView(movie: movie)
                } label: {
                    MovieListItem(movie: movie)

                }

            }
            .listRowSeparator(.hidden)
        }
        .listStyle(PlainListStyle())
        .onAppear {
            viewModel.getMovies()
          
            
        }
    }
}

#Preview {
    MovieListView()
}
