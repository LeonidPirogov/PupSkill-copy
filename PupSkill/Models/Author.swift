//
//  Creator.swift
//  PupSkill
//
//  Created by Leonid on 07.08.2025.
//

import Foundation

struct Author {
    let firstName: String
    let secondName: String
    let image: String
    let role: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}
