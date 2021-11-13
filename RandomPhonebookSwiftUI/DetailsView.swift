//
//  DetailsView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct DetailsView: View {
    
    let fullname: String
    let phone: String
    let email: String
    
    var body: some View {
        VStack {
            Image(systemName: "figure.wave")
                .resizable()
                .foregroundColor(.orange)
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Phone: \(phone)")
                    Text("E-mail: \(email)")
                }.padding([.leading, .top], 40)
                    .font(.system(size: 20))
                Spacer()
            }
            Spacer()
        }
        .navigationTitle("\(fullname)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fullname: "", phone: "", email: "")
    }
}
