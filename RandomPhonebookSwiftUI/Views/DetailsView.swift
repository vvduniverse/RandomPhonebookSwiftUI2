//
//  DetailsView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct DetailsView: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            Image(systemName: "figure.wave")
                .resizable()
                .foregroundColor(.orange)
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Phone: \(person.phoneNumber)")
                    Text("E-mail: \(person.email)")
                }.padding([.leading, .top], 40)
                    .font(.system(size: 20))
                Spacer()
            }
            Spacer()
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContactList().first!)
    }
}
