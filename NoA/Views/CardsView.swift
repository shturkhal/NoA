//
//  CardsView.swift
//  NoA
//
//  Created by Іван Штурхаль on 16.01.2024.
//

import SwiftUI

struct CardsView: View {
    
    var rect = Rectangle()
    var color: Color
    var image: String
    
    var body: some View {
        
        ZStack {
            rect
                .frame(width: 130, height: 130)
                .clipShape(.rect(cornerRadius: 20))
                .foregroundStyle(Color.black)
            rect
                .frame(width: 129, height: 129)
                .clipShape(.rect(cornerRadius: 20))
                .foregroundStyle(color)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
        }
    }
}


#Preview {
    CardsView(color: .black, image: "star")
}
