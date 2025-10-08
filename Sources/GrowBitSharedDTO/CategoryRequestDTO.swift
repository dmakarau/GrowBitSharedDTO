//
//  CategoryRequestDTO.swift
//  GrowBitSharedDTO
//
//  Created by Denis Makarau on 04.10.25.
//

import Foundation

public struct CategoryRequestDTO: Codable, Sendable {
    public let name: String
    public let colorCode: String
    
    public init(name: String, colorCode: String) {
        self.name = name
        self.colorCode = colorCode
    }
}
