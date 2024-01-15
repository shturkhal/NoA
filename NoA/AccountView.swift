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
    @State private var stopAlcoDate = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Personal info")) {
                        
                        TextField("First name", text: $firstName)
                        TextField("Last name", text: $lastName)
                        DatePicker("Last alcohol session", selection: $stopAlcoDate, displayedComponents: .date)
                        
                        Button {
                            print("save")
                        } label: {
                            Text("Save")
                        }
                    }
                    
                    //                        Button {
                    //                            print("print")
                    //                        } label: {
                    //                            Text("Reset")
                    //                                .frame(width: 280, height: 50)
                    //                                .background(Color.purple)
                    //                                .foregroundColor(.white)
                    //                                .font(.system(size: 20, weight: .bold, design: .default))
                    //                            
                    //                        }
                    //                        .clipShape(.capsule)
                    //                        .shadow(color: .lavender, radius: 5)
                    //                    }
                    //                
                    
                }
//                .scrollContentBackground(.hidden)
                .navigationTitle("Account")
            }
                      
        }
    }
}

#Preview {
    AccountView()
}
