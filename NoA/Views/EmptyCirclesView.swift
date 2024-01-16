//
//  EmptyCirclesView.swift
//  NoA
//
//  Created by Іван Штурхаль on 16.01.2024.
//

import SwiftUI

struct EmptyCirclesView: View {
    
    var progress: Float
    var color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 30.0)
                .opacity(0.30)
                .foregroundStyle(color)
                .opacity(0.60)
        }
    }
}


#Preview {
    EmptyCirclesView(progress: 0.1, color: Color.purple)
}
