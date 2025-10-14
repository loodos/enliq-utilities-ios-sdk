# EIQUtils

`EIQUtils` is a Swift package that includes multiple utility packages for iOS development. By integrating this package into your project, you can choose to add one or both of the included sub-packages. This modular setup allows developers to include only the necessary components, optimizing the size and functionality of their apps.

## Included Packages

### 1. EIQJailbreakDetector

`EIQJailbreakDetector` is a tool for detecting whether the current device is jailbroken, offering various checks to enhance security.

### 2. EIQOfflineControl

`EIQOfflineControl` monitors the internet connection status and type on iOS devices, providing real-time updates on network availability.

### 3. EIQCommonUtils

`EIQCommonUtils` It has common utils properties like Color, String Format, Units, File/IO, Permission, Preferences, Device, Clipboard, Time etc.

## Installation: 

If you are working on a single module project you can use Option 1.
Otherwise, (if you are developed a SPM based modular project) you should use Option 2.

### Option 1: Single Module Project

- File > Swift Packages > Add Package Dependency or you can use Xcode SPM addition menu:
<img width="1024" alt="packageAdding" src="https://github.com/user-attachments/assets/32235ea4-e9f3-45c1-8c31-8debd29fa410">

- Add `https://github.com/loodos/enliq-ios-utilities.git`

- Select "Up to Next Minor" with "1.0.0"

<img width="1024" alt="repositoryAddition" src="https://github.com/user-attachments/assets/8073bb7a-9ee7-4d76-b9f8-17482e6a0859">


**Note:** Since this module is in a pre-release stage, the release tag was created as 1.0.0. Some minor changes can be applied. After the release stage, this selection opiton can be changed as "Up to Next Major".

### Option 2: SPM Modular Project

#### Sub-Option 1: Adding All Packages

You can add all packages with using the `EIQUtils` target on at once.
To use `EIQUtils`, add the following dependency in your `Package.swift` file:

```swift
    dependencies: [
        ...
        .package(
            url: "https://github.com/loodos/enliq-ios-utilities.git",
            .upToNextMinor(from: "1.0.0")
        )
    ],
    ....
    targets: [
        ...,
        .target(
            name: "{Target Name}",
            dependencies: [
                ...,
                .product(name: "EIQUtils", package: "enliq-ios-utilities"),
            ]
        ),
        ...
    ]
```
Then, depending on which sub-package you want to use, add the relevant package(s) to your target’s dependencies.

#### Sub-Option 2: Adding Single Package

To include **only** (for example) `EIQJailbreakDetector`, configure your target like this:

```swift
    dependencies: [
        ...
        .package(
            url: "https://github.com/loodos/enliq-ios-utilities.git",
            .upToNextMinor(from: "1.0.0")
        )
    ],
    ....
    targets: [
        ...,
        .target(
            name: "{Target Name}",
            dependencies: [
                ...,
                .product(name: "EIQJailbreakDetector", package: "enliq-ios-utilities")
            ]
        ),
        ...
    ]
```

## Usage

### EIQOfflineControl

For detailed usage information, refer to the specific README.md of EIQOfflineControl [here](EIQUtils//Sources/EIQOfflineControl/README.md).

### EIQJailbreakDetector

For detailed usage information, refer to the specific README.md of EIQJailbreakDetector [here](EIQUtils//Sources/EIQJailbreakDetector/README.md).

### EIQCommonUtils

For detailed usage information, refer to the specific README.md of EIQJailbreakDetector [here](EIQUtils//Sources/EIQCommonUtils/README.md).

## Requirements

- iOS 13.0+
- Swift 5.9+
- Xcode 15.0+

