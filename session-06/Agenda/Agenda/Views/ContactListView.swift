//
//  ContactListView.swift
//  Agenda
//
//  Created by user272495 on 2/19/25.
//

import SwiftUI

struct ContactListView: View {
    
    @StateObject var viewModel = ContactListViewModel()
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.contacts) { contact in
                    NavigationLink (destination: {
                        ContactView(name: contact.name ?? "") { name in
                            contact.name = name
                            self.viewModel.update()
                        }
                    }){
                        Text(contact.name ?? "")
                    }
                }.onDelete { indexSet in
                    if let index = indexSet.first {
                        viewModel.delete(contact: viewModel.contacts[index])
                    }
                }
            }
            .onAppear {
                viewModel.fetchAll()
            }
            .navigationTitle("Agenda")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: {
                        ContactView { name in
                            viewModel.insert(name: name)
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
