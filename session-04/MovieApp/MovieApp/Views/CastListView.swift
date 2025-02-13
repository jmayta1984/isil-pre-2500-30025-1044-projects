//
//  CastListView.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

import SwiftUI

struct CastListView: View {
    let id: Int
    @StateObject var viewModel = CastListViewModel()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                
                ForEach(viewModel.cast) { cast in
                    Text(cast.name)
                }
            }
            
            
            
            
        }
        
        
        .onAppear {
            viewModel.getCast(id: id)
        }
    }
}

