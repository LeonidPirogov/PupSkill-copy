//
//  DataStore.swift
//  PupSkill
//
//  Created by Leonid on 13.08.2025.
//

import Foundation

struct FeedingRules {
    var gramsPerKg: [AgeGroup: Double]
    var sizeMultipliers: [SizeCategory: Double]
    var mealsPerDay: [AgeGroup: Int]
    
    static let `default` = FeedingRules(
        gramsPerKg: [.smallPuppy: 60, .youngPuppy: 45, .adultDog: 30],
        sizeMultipliers: [.small: 1.10, .medium: 1.00, .large: 0.90],
        mealsPerDay: [.smallPuppy: 5, .youngPuppy: 3, .adultDog: 2]
        )
}

struct SpoonUnit {
    var gramsPerSpoon: Double
    var roundToQuarter: Bool
    static let `default` = SpoonUnit(gramsPerSpoon: 19, roundToQuarter: true)
}
