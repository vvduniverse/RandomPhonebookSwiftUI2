//
//  NumbersView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct NumbersView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
        List(contacts) { person in
            Section("\(person.fullName)") {
                Label(person.phoneNumber, systemImage: "candybarphone")
                Label(person.email, systemImage: "mail")
            }
        }
        .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
