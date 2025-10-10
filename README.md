# GrowBitSharedDTO

A Swift Package Manager library providing shared Data Transfer Objects (DTOs) for the GrowBit application.

## Overview

This package contains common DTOs used for communication between the iOS client and backend server components of the GrowBit app.

## Requirements

- Swift 6.2+
- iOS 13.0+ / macOS 10.15+

## Features

- **Swift 6 Concurrency Support**: All DTOs conform to `Sendable` for safe usage across concurrency boundaries
- **Server-Independent**: No backend framework dependencies (Vapor, Kitura, etc.)
- **Codable**: Native JSON encoding/decoding support

## Installation

### Swift Package Manager

Add this package to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/dmakarau/GrowBitSharedDTO.git", from: "1.0.0")
]
```

Or in Xcode:
1. File → Add Package Dependencies
2. Enter the repository URL: `https://github.com/dmakarau/GrowBitSharedDTO.git`
3. Select the version rule and add to your target

## Usage

Import the package in your Swift files:

```swift
import GrowBitSharedDTO
```

### Available DTOs

#### Authentication DTOs

##### RegisterResponseDTO
Response object for user registration requests.

```swift
let response = RegisterResponseDTO(
    error: false,
    reason: nil
)
```

**Properties:**
- `error: Bool` - Indicates if an error occurred
- `reason: String?` - Optional error description

##### LoginResponseDTO
Response object for user login requests.

```swift
let response = LoginResponseDTO(
    error: false,
    reason: nil,
    token: "jwt-token-here",
    userId: "user-123"
)
```

**Properties:**
- `error: Bool` - Indicates if an error occurred
- `reason: String?` - Optional error description
- `token: String?` - JWT authentication token (if login successful)
- `userId: String?` - User identifier (if login successful)

#### Category DTOs

##### CategoryRequestDTO
Request object for creating or updating a habit category.

```swift
let request = CategoryRequestDTO(
    name: "Health",
    colorCode: "#FF5733"
)
```

**Properties:**
- `name: String` - Category name
- `colorCode: String` - Hex color code for the category

##### CategoryResponseDTO
Response object containing category data.

```swift
let response = CategoryResponseDTO(
    id: UUID(),
    name: "Health",
    colorCode: "#FF5733"
)
```

**Properties:**
- `id: UUID` - Unique category identifier
- `name: String` - Category name
- `colorCode: String` - Hex color code for the category

#### Item (Habit) DTOs

##### ItemRequestDTO
Request object for creating or updating a habit item.

```swift
let request = ItemRequestDTO(
    title: "Morning Exercise",
    description: "30 minutes of cardio",
    startDate: Date(),
    frequency: .daily,
    goalDays: 30,
    categoryId: UUID()
)
```

**Properties:**
- `title: String` - Habit title
- `description: String?` - Optional habit description
- `startDate: Date` - When the habit tracking begins
- `frequency: FrequencyDTO` - How often the habit should be performed
- `goalDays: Int` - Target number of days to complete
- `categoryId: UUID` - Associated category identifier

##### ItemResponseDTO
Response object containing habit item data with tracking information.

```swift
let response = ItemResponseDTO(
    id: UUID(),
    title: "Morning Exercise",
    description: "30 minutes of cardio",
    startDate: Date(),
    frequency: .daily,
    goalDays: 30,
    completedDays: 5,
    isCompleted: false,
    categoryId: UUID()
)
```

**Properties:**
- `id: UUID` - Unique item identifier
- `title: String` - Habit title
- `description: String?` - Optional habit description
- `startDate: Date` - When the habit tracking begins
- `frequency: FrequencyDTO` - How often the habit should be performed
- `goalDays: Int` - Target number of days to complete
- `completedDays: Int` - Number of days completed so far
- `isCompleted: Bool` - Whether the habit goal has been achieved
- `categoryId: UUID` - Associated category identifier

#### Supporting Types

##### FrequencyDTO
Enum defining habit frequency options.

```swift
public enum FrequencyDTO: String, Codable, CaseIterable, Sendable {
    case daily
    case weekly
    case monthly
}
```

**Cases:**
- `daily` - Habit should be performed every day
- `weekly` - Habit should be performed every week
- `monthly` - Habit should be performed every month

## Development

### Build

```bash
swift build
```

### Test

```bash
swift test
```

### Clean

```bash
swift package clean
```

## License

See [LICENSE](LICENSE) file for details.
