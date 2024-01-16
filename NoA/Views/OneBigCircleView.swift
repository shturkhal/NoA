//
//  OneBigCircle.swift
//  NoA
//
//  Created by Іван Штурхаль on 16.01.2024.
//

import SwiftUI

struct OneBigCircleView: View {
    
    var progress: Float
    var color: Color
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(lineWidth: 40.0)
                .opacity(0.10)
                .foregroundStyle(Color.purple)
                .opacity(0.60)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 40.0, lineCap: .round, lineJoin: .round))
                .foregroundStyle(color)
                .rotationEffect(Angle.degrees(270))
                .animation(.easeInOut(duration: 2.0))
        }
    }
}

#Preview {
    OneBigCircleView(progress: 0.3, color: Color.red)
}
