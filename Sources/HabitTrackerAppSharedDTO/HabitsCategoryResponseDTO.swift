//
//  HabitsCategoryResponseDTO.swift
//  HabitTrackerAppSharedDTO
//
//  Created by Denis Makarau on 04.10.25.
//

import Foundation

public struct HabitsCategoryResponseDTO : Codable, Sendable {
    public let id: UUID
    public let name: String
    public let colorCode: String
    
    public init(id: UUID, name: String, colorCode: String) {
        self.id = id
        self.name = name
        self.colorCode = colorCode
    }
}
