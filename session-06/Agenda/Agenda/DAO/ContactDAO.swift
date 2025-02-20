//
//  ContactDAO.swift
//  Agenda
//
//  Created by user272495 on 2/19/25.
//
import CoreData

class ContactDAO {
    
    let context = PersistenceController.shared.container.viewContext
    
    func insert(name: String) {
        let contact = Contact(context: context)
        contact.name = name
        saveContext()
    }
    
    func delete(contact: Contact) {
        context.delete(contact)
        saveContext()
    }
    
    func fetchAll() -> [Contact] {
        let request = NSFetchRequest<Contact>(entityName: "Contact")
        
        do {
            return try context.fetch(request)
        } catch let error {
            print("Error \(error.localizedDescription)")
        }
        return []
    }
    
    private func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print("Error \(error.localizedDescription)")
            }
        }
    }
}
