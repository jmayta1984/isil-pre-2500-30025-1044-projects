//
//  FavoriteMovieDAO.swift
//  MovieApp
//
//  Created by user272495 on 2/19/25.
//
import CoreData

class FavoriteMovieDAO {
    
    let context = PersistenceController.shared.container.viewContext
    
    func insert(movie: Movie) {
        let favoriteMovie = FavoriteMovie(context: context)
        favoriteMovie.id = Int32(movie.id)
        favoriteMovie.title = movie.title
        favoriteMovie.overview = movie.overview
        saveContext()
    }
    
    func delete(by id: Int) {
        let request = NSFetchRequest<FavoriteMovie>(entityName: "FavoriteMovie")
        request.predicate = NSPredicate(format: "id == %i", id)
        
        do {
            let favorites = try context.fetch(request)
            for favorite in favorites {
                context.delete(favorite)
            }
            saveContext()
        } catch let error {
            print("Error: \(error.localizedDescription)")
        }
        
    }
    
    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
