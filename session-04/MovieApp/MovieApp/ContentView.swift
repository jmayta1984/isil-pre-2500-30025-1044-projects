//
//  ContentView.swift
//  MovieApp
//
//  Created by user272495 on 2/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = MovieListViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }
    
    var body: some View {
        NavigationStack {
            
            VStack {
                LazyHStack {
                    ForEach(APIEndpoint.allCases, id: \.self) { endpoint in
                        Text(endpoint.displayName)
                            .font(.subheadline)
                            .foregroundStyle(endpoint == viewModel.endpoint ? Color.orange: Color.primary)
                            .padding([.leading, .trailing])
                            .onTapGesture {
                                viewModel.updateEndpoint(endpoint: endpoint)
                            }
                        
                    }
                }
                
                
                .fixedSize()
                
                MovieListView(viewModel: viewModel)
            }
            .navigationTitle(viewModel.endpoint.displayName)
        }
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}
