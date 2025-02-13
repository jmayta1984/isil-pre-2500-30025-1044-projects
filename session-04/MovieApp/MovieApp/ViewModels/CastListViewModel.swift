//
//  CastListViewModel.swift
//  MovieApp
//
//  Created by user272495 on 2/12/25.
//

import Foundation

class CastListViewModel: ObservableObject {
    @Published var cast:[Cast] = []
    @Published var message: String = ""
    let castService = CastService()
    
    func getCast(id: Int) {
        castService.getCast(id: id) { cast, message in
            DispatchQueue.main.async{
                if let cast = cast {
                    self.cast = cast
                }
                if let message = message {
                    self.message = message
                }

            }
        }
    }
}
