//
//  CreatorDataStore.swift
//  PupSkill
//
//  Created by Leonid on 07.08.2025.
//

import Foundation

struct AuthorDataStore {
    static func getAuthors() -> [Author] {
        [
            Author(firstName: "Leonid", secondName: "Perlin", image: "LeonidP", role: "TeamLead"),
            Author(firstName: "Artem", secondName: "Pirogov", image: "ArtemP", role: "Junior Developer")
        ]
    }
}
