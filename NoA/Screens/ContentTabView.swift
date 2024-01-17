//
//  ContentView.swift
//  NoA
//
//  Created by Іван Штурхаль on 08.01.2024.
//

import SwiftUI

struct ContentTabView: View {
    
    var body: some View {
        TabView {
            PurpleMonitorView()
                .tabItem {
                    Image(systemName: "flag.checkered.circle")
                    Text("Your results")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Account")
                }
        }
        .tint(Color.periwinkle)
    }
}

#Preview {
    ContentTabView()
}
