//
//  ItemResponseDTO.swift
//  GrowBitSharedDTO
//
//  Created by Denis Makarau on 10.10.25.
//

import Foundation

public struct ItemResponseDTO: Codable, Sendable {
    public var id: UUID
    public var title: String
    public var description: String?
    public var startDate: Date
    public var frequency: FrequencyDTO
    public var goalDays: Int
    public var completedDays: Int
    public var isCompleted: Bool
    public var categoryId: UUID
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        startDate: Date,
        frequency: FrequencyDTO,
        goalDays: Int,
        completedDays: Int,
        isCompleted: Bool,
        categoryId: UUID
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.startDate = startDate
        self.frequency = frequency
        self.goalDays = goalDays
        self.completedDays = completedDays
        self.isCompleted = isCompleted
        self.categoryId = categoryId
    }
}
