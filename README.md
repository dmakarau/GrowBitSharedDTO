# HabitTrackerAppSharedDTO

A Swift Package Manager library providing shared Data Transfer Objects (DTOs) for the Habit Tracker application.

## Overview

This package contains common DTOs used for communication between the iOS client and backend server components of the Habit Tracker app.

## Requirements

- Swift 6.2+
- iOS 13.0+ / macOS 10.15+

## Installation

### Swift Package Manager

Add this package to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/dmakarau/HabitTrackerAppSharedDTO.git", from: "1.0.0")
]
```

Or in Xcode:
1. File → Add Package Dependencies
2. Enter the repository URL: `https://github.com/dmakarau/HabitTrackerAppSharedDTO.git`
3. Select the version rule and add to your target

## Usage

Import the package in your Swift files:

```swift
import HabitTrackerAppSharedDTO
```

### Available DTOs

#### RegisterResponseDTO
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

#### LoginResponseDTO
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
