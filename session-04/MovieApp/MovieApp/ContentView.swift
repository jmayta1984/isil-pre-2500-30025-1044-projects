//
//  ContentView.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                LazyHStack {
                    ForEach(APIEndpoint.allCases, id: \.self) { endpoint in
                        Text(endpoint.displayName)
                            .font(.subheadline)
                            .padding([.leading, .trailing])
                            
                    }
                }.fixedSize()
                MovieListView()
            }
        }
    }
}

#Preview {
    ContentView()
}
