//
//  ContsctsView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            HStack {
                List(contacts) { person in
                    NavigationLink(person.fullName) {
                        DetailsView(person: person)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContsctsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Person.getContactList())
    }
}
