//
//  PurpleMonitorView.swift
//  NoA
//
//  Created by Іван Штурхаль on 11.01.2024.
//

import SwiftUI

struct PurpleMonitorView: View {
    
    @State var progressValue: Float = 0.1
    
    var body: some View {
        // Кола навколо днів
       
            VStack {
                ZStack {
                    ForEach(0..<6, id: \Int.self) { step in
                        EmptyCirclesView(progress: progressValue, color: Color.periwinkle)
                            .frame(width: 220 + Double(step * 20), height: 220 + Double(step * 20))
                            .padding(20)
                            .shadow(color: .black, radius: Double(step + 1))
                    }
                    OneBigCircleView(progress: progressValue, color: Color.greenSoap)
                        .frame(width: 260, height: 260)
                        .padding(30).onAppear(perform: {
                            self.progressValue = 0.30
                        })
                        .shadow(color: Color.soap, radius: 10)
                    // Дні без шкідливої звички
                    VStack {
                        Text("178")
                            .font(.system(size: 70, weight: .medium))
                        Text("days")
                            .font(.system(size: 30))
                    }
                    .onTapGesture {
                        if (progressValue) < 1.0 {
                            self.progressValue += 0.10
                        } else {
                            progressValue -= 1.0
                        }
                    }
                    
                    .shadow(color: Color.periwinkle, radius: 2)
                    .fontDesign(.rounded)
                    .foregroundStyle(Color.white)
                }
                .frame(width: 260, height: 310)
                .padding(.top)
                // Секція з індикаторами
                VStack {
                    InfoSectionsView(nameOfSection: "Achievement",
                                     indicator: "\(MockData.sample.userAchievement) / \(HabitModel.maxAchievement)",
                                     image: "star.fill",
                                     color: Color.soap)
                    InfoSectionsView(nameOfSection: "Saved money",
                                     indicator: "$\(MockData.sample.savedMoney)",
                                     image: "star.fill",
                                     color: Color.soap)
                    InfoSectionsView(nameOfSection: "My goal",
                                     indicator: "\(MockData.sample.userGoal) / \(HabitModel.maxGoal)",
                                     image: "star.fill",
                                     color: Color.soap)
                }
                .padding(20)
                // Секція з нагородами
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(0..<6, id: \Int.self) { step in
                                CardsView(color: Color.soap, image: "3dtarget")
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .cornerRadius(20)
                    .shadow(color: .charcoal, radius: 1)
                    
                }
                .padding(.horizontal)
                
            }
       
            .containerRelativeFrame([.horizontal, .vertical])
            .background(.soap)
    }
}

#Preview {
    PurpleMonitorView()
}
