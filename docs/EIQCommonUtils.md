# EIQCommonUtils

EIQCommonUtils is a Swift package that offers a collection of utilities, extensions, and helpers to streamline development in iOS applications. This package includes a wide range of functionalities such as working with collections, colors, numbers, text formatting, device information, and much more. It’s designed to improve code readability and reusability by providing commonly used extensions and utility functions in a modular way.

## Features

- **Application Extensions:** Utilities to work with Bundle and app-related information.
- **Collection Extensions:** Handy methods for managing and manipulating collections.
- **Color Extensions:** Extensions for working with UIColor, including hex conversions.
- **Device Utilities:** Provides device-related information and clipboard management.
- **Number Extensions:** Extensions for working with different numeric types like Float, Double, and Integers.
- **Optional Handling:** Methods to simplify working with optionals and providing default values.
- **Text Manipulation:** Utilities for string manipulation, emoji handling, trimming, validation, and more.
- **Time Utilities:** Formatting and handling Date objects and time-related data.
- **UIKit Helpers:** Extensions for UIKit components such as UIButtons, UICollectionViews, and UIViews, with additional properties for layout and animations.
- **View Extensions:** Helpers for auto layout, constraints, animations, shadow management, and more.


## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

To use `EIQCommonUtils`, add the following dependency in your `Package.swift` file:

```swift
    dependencies: [
        ...
        .package(
            url: "https://github.com/loodos/enliq-utilities-ios-sdk.git",
            .upToNextMajor(from: "1.1.0")
        )
    ],
    ....
    targets: [
        ...,
        .target(
            name: "{Target Name}",
            dependencies: [
                ...,
                .product(name: "EIQCommonUtils", package: "enliq-utilities-ios-sdk")
            ]
        ),
        ...
    ]
```

## Usage
The usage of the utilities documented on the properties.
