//
//  ItemRequestDTO.swift
//  GrowBitSharedDTO
//
//  Created by Denis Makarau on 10.10.25.
//

import Foundation

public struct ItemRequestDTO: Codable, Sendable {
    public var title: String
    public var description: String?
    public var startDate: Date
    public var frequency: FrequencyDTO
    public var goalDays: Int
    public var categoryId: UUID
    
    public init(
        title: String,
        description: String? = nil,
        startDate: Date,
        frequency: FrequencyDTO,
        goalDays: Int,
        categoryId: UUID
    ) {
        self.title = title
        self.description = description
        self.startDate = startDate
        self.frequency = frequency
        self.goalDays = goalDays
        self.categoryId = categoryId
    }
}
