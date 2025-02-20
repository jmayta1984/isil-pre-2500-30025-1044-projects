//
//  AgendaApp.swift
//  Agenda
//
//  Created by user272495 on 2/19/25.
//

import SwiftUI

@main
struct AgendaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContactListView()
        }
    }
}
