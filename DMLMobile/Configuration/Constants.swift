//
//  Constants.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 20/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import Foundation

enum EducationLevel : String {
    case primary = "Primary"
    case secondary = "Secondary"
    case associates = "Associate's"
    case bachelors = "Bachelor's"
    case masters = "Master's"
    case doctorate = "Doctorate or higher"
}
extension EducationLevel: CaseIterable {}

enum Gender: String {
    case male = "Male"
    case female = "Female"
    case other = "N/A"
}
extension Gender: CaseIterable {}
