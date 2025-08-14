//
//  FeedingCalculator.swift
//  PupSkill
//
//  Created by Leonid on 13.08.2025.
//

import Foundation

enum FeedingCalculator {
    
    static func calculate(
        profile: DogProfile,
        rules: FeedingRules = .default,
        spoon: SpoonUnit = .default
    ) -> FeedingResult {
        let ageGroup = AgeGroup(totalMonths: profile.totalMonths)
        let size = SizeCategory.from(heightCm: profile.heightCm)
        
        let base = rules.gramsPerKg[ageGroup] ?? 30
        let sizeMul = rules.sizeMultipliers[size] ?? 1.0
        
        var gramsPerDay = profile.weightKg * base * sizeMul
        gramsPerDay = max(0, gramsPerDay)
        
        let meals = max(1, rules.mealsPerDay[ageGroup] ?? 2)
        
        let spoonsPerDayRaw = gramsPerDay / max(1, spoon.gramsPerSpoon)
        let spoonsPerDay = spoon.roundToQuarter
            ? ((spoonsPerDayRaw * 4).rounded() / 4)
            : spoonsPerDayRaw
        
        let spoonsPerMealRaw = spoonsPerDay / Double(meals)
        let spoonsPerMeal = spoon.roundToQuarter
            ? ((spoonsPerMealRaw * 4).rounded() / 4)
            : spoonsPerMealRaw
        
        return FeedingResult(
            gramsPerDay: gramsPerDay,
            spoonsPerDay: spoonsPerDay,
            mealsPerDay: meals,
            spoonsPerMeal: spoonsPerMeal
        )
    }
}


