//
//  Feeding.swift
//  PupSkill
//
//  Created by Leonid on 13.08.2025.
//

import Foundation

struct DogProfile {
    var heightCm: Double
    var weightKg: Double
    var ageYears: Int
    var ageMonths: Int
    
    init(heightCm: Double, weightKg: Double, ageYears: Int, ageMonths: Int) {
        self.heightCm = heightCm
        self.weightKg = weightKg
        self.ageYears = ageYears
        self.ageMonths = ageMonths
    }
    
    var totalMonths: Int { ageYears * 12 + ageMonths }
}

struct FeedingResult {
    let gramsPerDay: Double
    let spoonsPerDay: Double
    let mealsPerDay: Int
    let spoonsPerMeal: Double
}

enum SizeCategory {
    case small, medium, large
    
    static func from(heightCm: Double) -> SizeCategory {
        switch heightCm {
        case ..<35: .small
        case 35...55: .medium
        default: .large
        }
    }
}

enum AgeGroup: String {
    case smallPuppy, youngPuppy, adultDog
    
    init(totalMonths: Int ) {
        switch totalMonths {
        case 0..<6: self = .smallPuppy
        case 6..<12: self = .youngPuppy
        default: self = .adultDog
        }
    }
}
