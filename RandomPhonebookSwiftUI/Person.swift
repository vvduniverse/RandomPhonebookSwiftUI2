//
//  Person.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import Foundation

class Persons: ObservableObject {
    var contacts = Person.getContactList()
}

struct Person: Identifiable {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    let id = UUID()
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
//        init(name: String, surname: String, email: String, phoneNumber: String) {
//            self.name = name
//            self.surname = surname
//            self.email = email
//            self.phoneNumber = phoneNumber
//        }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

