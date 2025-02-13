//
//  MovieListItem.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

import SwiftUI

struct MovieListItem: View {
    let movie: Movie
    var body: some View {
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
                    .foregroundStyle(.orange)
                Text(movie.overview)
                    .lineLimit(2)
            }
           
        }

    }
}


