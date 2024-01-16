//
//  UserModel.swift
//  NoA
//
//  Created by Іван Штурхаль on 16.01.2024.
//

import Foundation

struct HabitModel {
    
    static let maxAchievement = 100
    static let maxGoal = 100
    
    var userAchievement: Int
    var userGoal: Int
    var savedMoney: Double
}

struct MockData {
    static let sample = HabitModel(userAchievement: 35, userGoal: 45, savedMoney: 545.65)
}


