//
//  AccountView.swift
//  NoA
//
//  Created by Іван Штурхаль on 10.01.2024.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var stopAlcoholDate = Date()
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section(header: Text("Personal info")) {
                        TextField("First name", text: $firstName)
                        TextField("Last name", text: $lastName)
                        DatePicker("Last alcohol session", selection: $stopAlcoholDate, displayedComponents: .date)
                        Button {
                            print("save")
                        } label: {
                            Text("Save")
                        }
                    }
                    
                }
                .navigationTitle("Account")
            }
        }
    }
}


#Preview {
    AccountView()
}
