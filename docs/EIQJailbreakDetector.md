# EIQJailbreakDetector

`EIQJailbreakDetector` is a lightweight Swift package that detects whether an iOS device is jailbroken. It employs various techniques such as searching for known jailbreak files, checking for access outside of the app's sandbox, and testing for system path write permissions.

## Features

- Detects jailbreak by searching for known system modifications.
- Tests write access to restricted directories.
- Ensures compatibility with both simulators and physical devices.
- Fully documented and easy to integrate.

## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

To use `EIQJailbreakDetector`, add the following dependency in your `Package.swift` file:

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
                .product(name: "EIQJailbreakDetector", package: "enliq-utilities-ios-sdk")
            ]
        ),
        ...
    ]
```

## Usage
Using JailbreakDetector to check if the current device is jailbroken is simple. The library provides a static method isJailbroken() which returns a boolean indicating whether the device is jailbroken or not.

```swift
import EIQJailbreakDetector

...

if EIQJailbreakDetector.isJailbroken() {
    print("Warning: The device is jailbroken.")
} else {
    print("The device is secure.")
}
```

Also, don't forget to add "Cydia" in LSApplicationQueriesSchemes key of info.plist. The package's jailbreak detector functions cause a open url failing log. In addition, if the addition did not maden canOpenURL will always return false.

Please add the following key to your `Info.plist` file:
```xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>cydia</string>
</array>
```

## Jailbreak Detection Methods
JailbreakDetector uses the following techniques to determine if the device is jailbroken:

1.	**Check for Cydia**: Verifies if Cydia is installed using a URI scheme.
2.	**Check for Suspicious Apps**: Searches for well-known jailbreak apps like Cydia, FakeCarrier, Icy, etc.
3.	**Check for Suspicious Paths**: Looks for specific system paths that are typically present in jailbroken devices.
4.	**Check File System Permissions**: Attempts to write to a restricted system directory to see if the app has elevated privileges.
