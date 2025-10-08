//
//  RegisterResponseDTO.swift
//  GrowBitSharedDTO
//
//  Created by Denis Makarau on 03.10.25.
//

import Foundation

public struct RegisterResponseDTO: Codable, Sendable {
    public let error: Bool
    public var reason: String?
    
    public init(error: Bool, reason: String? = nil) {
        self.error = error
        self.reason = reason
    }
}
