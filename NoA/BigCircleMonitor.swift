//
//  BigCircleMonitor.swift
//  NoA
//
//  Created by Іван Штурхаль on 11.01.2024.
//

import SwiftUI

struct BigCircleMonitor: View {
    
    @State var progressValue: Float = 0.0
    @State var animateGradient: Bool
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
            
                
             
                CircleForNumbers(progress: $progressValue)
                    .frame(width: 220, height: 220)
                    .padding(20)
                    .shadow(color: .black, radius: 1)
                CircleForNumbers(progress: $progressValue)
                    .frame(width: 240, height: 240)
                    .padding(20)
                    .shadow(color: .black, radius: 2)
                CircleForNumbers(progress: $progressValue)
                    .frame(width: 260, height: 260)
                    .padding(20)
                    .shadow(color: .black, radius: 3)
                CircleForNumbers(progress: $progressValue)
                    .frame(width: 280, height: 280)
                    .padding(20)
                    .shadow(color: .black, radius: 4)
                CircleForNumbers(progress: $progressValue)
                    .frame(width: 300, height: 300)
                    .padding(20)
                    .shadow(color: .black, radius: 5)
                CircleForNumbers(progress: $progressValue)
                    .frame(width: 320, height: 320)
                    .padding(20)
                    .shadow(color: .black, radius: 6)
//                CircleForNumbers(progress: $progressValue)
//                    .frame(width: 340, height: 340)
//                    .padding(20)
//                    .shadow(color: .black, radius: 5)
//                CircleForNumbers(progress: $progressValue)
//                    .frame(width: 360, height: 360)
//                    .padding(20)
//                    .shadow(color: .black, radius: 5)
                
                OneBigCircle(progress: $progressValue)
                    .frame(width: 260, height: 260)
                    .padding(30).onAppear(perform: {
                        self.progressValue = 0.30
                    })

                
                
                VStack {
                    Text("178")
                        .fontDesign(.rounded)
                        .font(.system(size: 80, weight: .medium))
                        .foregroundStyle(Color.white)
                        .shadow(color: .black, radius: 2)
                    
                    Text("days")
                        .fontDesign(.rounded)
                        .font(.system(size: 35, weight: .medium))
                        .foregroundStyle(Color.white)
                        .shadow(color: .black, radius: 2)
                }
            }
            .frame(width: 260, height: 310)
            .padding(.top)
            
            Form {
                Section {
                    HStack {
                        ZStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.newGreen)
                                .shadow(color: .black, radius: 2)
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundStyle(Color.newGreen)
                                .shadow(color: .newGreen, radius: 10)
                        }
                        Text("Achievements")
                            .fontDesign(.rounded)
                        Spacer()
                        Text("56 / 100")
                            .fontDesign(.rounded)
                            .bold()
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.newGreen)
                                .shadow(color: .black, radius: 2)
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundStyle(Color.newGreen)
                                .shadow(color: .newGreen, radius: 10)
                        }
                        Text("Saved money")
                            .fontDesign(.rounded)
                        Spacer()
                        Text("$1234,00")
                            .fontDesign(.rounded)
                            .bold()
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.newGreen)
                                .shadow(color: .black, radius: 2)
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundStyle(Color.newGreen)
                                .shadow(color: .newGreen, radius: 10)
                        }
                        Text("My goal")
                            .fontDesign(.rounded)
                        Spacer()
                        Text("56 / 100")
                            .fontDesign(.rounded)
                            .bold()
                    }
                    
                }
                
                
                .listRowSeparator(.hidden)
                //
                .listRowBackground(Color.clear)
                
                
                
                
                Section {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                
                                CardView(color: Color.newGreen, image: "3dtarget")
                                CardView(color: Color.newGreen, image: "3dtarget")
                                CardView(color: Color.newGreen, image: "3dtarget")
                                CardView(color: Color.newGreen, image: "3dtarget")
                                CardView(color: Color.newGreen, image: "3dtarget")
                                CardView(color: Color.newGreen, image: "3dtarget")
                                
                                Button {
                                    if (progressValue) < 1.0 {
                                        self.progressValue += 0.10
                                    } else {
                                        progressValue -= 1.0
                                    }
                                    
                                } label: {
                                    Text("Get more")
                                        .fontDesign(.rounded)
                                        .font(.system(size: 15, weight: .semibold))
                                        .frame(width: 100, height: 30)
                                        .foregroundStyle(Color.white)
                                    
                                }
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .cornerRadius(20)
                        .shadow(color: .charcoal, radius: 1)
                    }
                }
                .listRowBackground(Color.clear)
                
            }
            .padding(.bottom)
            .scrollContentBackground(.hidden)
            
            
            
        }
        .background(Color.newGreen)
    }
}




struct OneBigCircle: View {
    @Binding var progress: Float
    var color = Color.newYellow
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 40.0)
                .opacity(0.10)
                .foregroundStyle(Color.green)
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

struct CircleForNumbers: View {
    
    @Binding var progress: Float
    var color = Color.orange
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 30.0)
                .opacity(0.30)
                .foregroundStyle(Color.newGreen)
                .opacity(0.60)
            
            
        }
    }
}



struct CardView: View {
    
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
    BigCircleMonitor(animateGradient: false)
}
