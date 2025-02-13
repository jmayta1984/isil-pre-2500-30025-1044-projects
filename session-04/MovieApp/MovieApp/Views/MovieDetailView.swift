//
//  MovieViewDetail.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                AsyncImage(
                    url: URL(string: movie.poster),
                    content: { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: .infinity)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    },
                    placeholder: {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: .infinity, height: .infinity)

                    }
                )
                Text(movie.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
                Text(movie.overview)
                
                Text("Cast")
                    .fontWeight(.bold)
                    .foregroundStyle(.orange)
                
                CastListView(id: movie.id)
                
            }
        }
       
        
    }
}

