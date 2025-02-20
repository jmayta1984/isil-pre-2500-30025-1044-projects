//
//  ContactView.swift
//  Agenda
//
//  Created by user272495 on 2/19/25.
//

import SwiftUI

struct ContactView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var name = ""
    let addContact: (String) -> Void
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
            Button(action: {
                addContact(name)
                dismiss()
            }) {
                Text("Save")
            }
        }
    }
}

#Preview {
    ContactView { _ in
        
    }
}
