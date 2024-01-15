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
            Monitor()
                .tabItem {
                    Image(systemName: "drop.triangle.fill")
                    Text("Монітор")
                }
                .symbolRenderingMode(.palette)
        }
        
    }
    
}
#Preview {
    ContentTabView()
}
