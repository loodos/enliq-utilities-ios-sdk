<p align="center">
  <img src="https://i.ibb.co/zh0Lrz6J/test.png"/>
</p>

> **Note:** The update rule file must be uploaded to the CDN with the filename **`ios-ruleset.json`**.

# EIQUpdateControl

`EIQUpdateControl` is a Swift package designed to check the app version update rules dynamically based on backend responses. It determines whether the app should enforce a **force update**, recommend a **soft update**, or proceed with **no update**.

## Features

- Dynamically checks for app updates from a remote backend.
- Supports both **Force Update** and **Soft Update** mechanisms.
- Uses JSON-based rule evaluation via `jsonlogic`.
- Lightweight and easy to integrate into any iOS app.

## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

To use `EIQUpdateControl`, add the following dependency in your `Package.swift` file:

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
            .product(name: "EIQUpdateControl", package: "enliq-utilities-ios-sdk")
        ]
    ),
    ...
]
```

## Usage

Here's an example of how to use `EIQUpdateControl` to check for updates:

```swift
import EIQUpdateControl

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        EIQUpdateControl.shared.checkUpdate(baseURL: "https://api.example.com") { updateType in
            switch updateType {
            case .forceUpdate:
                print("Force update required!")
            case .softUpdate:
                print("Soft update available.")
            case .noUpdate:
                print("No update required.")
            }
        }
    }
}
```

## Update Types

The `UpdateType` enum represents the possible results of the update check:

```swift
public enum UpdateType {
    case forceUpdate
    case softUpdate
    case noUpdate
}
```

- **forceUpdate** → The user must update before proceeding.
- **softUpdate** → The user is advised to update, but can continue using the app.
- **noUpdate** → The app is already up to date.

## Unit Tests

This package also includes unit tests to verify update rule evaluation and network response handling.  
Tests are located in the `EIQUpdateControlTests` target.  
To run tests: **Product > Test** or press `Cmd + U`.
