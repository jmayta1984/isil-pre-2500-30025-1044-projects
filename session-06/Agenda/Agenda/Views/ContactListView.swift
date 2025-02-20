//
//  ContactListView.swift
//  Agenda
//
//  Created by user272495 on 2/19/25.
//

import SwiftUI

struct ContactListView: View {
    
    @State var contacts: [Contact] = []
    var contactDAO = ContactDAO()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts) { contact in
                    Text(contact.name ?? "")
                }.onDelete { indexSet in
                    if let index = indexSet.first {
                        contactDAO.delete(contact: contacts[index])
                    }
                }
            }
            .onAppear {
                contacts = contactDAO.fetchAll()
            }
            .navigationTitle("Agenda")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: {
                        ContactView { name in
                            contactDAO.insert(name: name)
                        }
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContactListView()
}
