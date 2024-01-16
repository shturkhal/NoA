//
//  UserModel.swift
//  NoA
//
//  Created by Іван Штурхаль on 16.01.2024.
//

import Foundation

struct HabitModel {
    static let maxAchi = 100
    static let maxGoal = 100
    var userAchi: Int
    var userGoal: Int
    var savedMoney: Double
}

struct MockData {
    static let sample = HabitModel(userAchi: 35, userGoal: 45, savedMoney: 545.65)
}


