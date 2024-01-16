//
//  InfoSections.swift
//  NoA
//
//  Created by Іван Штурхаль on 16.01.2024.
//

import SwiftUI

struct InfoSectionsView: View {
    
    var nameOfSection: String
    var indicator: String
    var image: String
    var color: Color
    
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(color)
                    .shadow(color: .black, radius: 2)
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundStyle(color)
                    .shadow(color: color, radius: 10)
            }
            Text(nameOfSection)
                .fontDesign(.rounded)
            Spacer()
            Text(indicator)
                .fontDesign(.rounded)
                .bold()
        }
    }
}

#Preview {
    InfoSectionsView(nameOfSection: "Test",
                 indicator: "10/100",
                 image: "star.fill",
                 color: Color.newGreen)
}
