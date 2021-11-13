//
//  NumbersView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct NumbersView: View {
    
//    let contacts = Person.getContactList()
    let contacts = Persons()
    
    var body: some View {
        List(contacts.contacts) { contact in
            Section("\(contact.fullName)") {
                Text("\(Image(systemName: "candybarphone"))  \(contact.phoneNumber)")
                Text("\(Image(systemName: "mail")) \(contact.email)")
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
