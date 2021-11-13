//
//  ContsctsView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct ContactsView: View {
    
//    let contacts = Person.getContactList()
    let contacts = Persons()
    
    var body: some View {
        HStack {
            List(contacts.contacts) { contact in
                NavigationLink(contact.fullName) {
                    DetailsView(fullname: contact.fullName,
                                phone: contact.phoneNumber,
                                email: contact.email)
                }
            }
        }
    }
}

struct ContsctsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
