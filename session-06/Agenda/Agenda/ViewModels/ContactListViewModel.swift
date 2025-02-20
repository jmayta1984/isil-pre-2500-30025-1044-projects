//
//  ContactListViewModel.swift
//  Agenda
//
//  Created by user272495 on 2/19/25.
//
import Foundation

class ContactListViewModel: ObservableObject {
    @Published private(set) var contacts: [Contact] = []
    var contactDAO = ContactDAO()
    
   
    func insert(name: String) {
        contactDAO.insert(name: name)
    }
    
    func delete(contact: Contact) {
        contactDAO.delete(contact: contact)
    }
    
    func fetchAll() {
        self.contacts = contactDAO.fetchAll()
    }
    
    func update() {
        contactDAO.update()
    }
}

