# EIQScreenshot SDK

EIQScreenshot SDK is a framework developed to protect specified views from screenshots in iOS applications.

## Features

- ✅ iOS 12.0+ support
- ✅ View-based screenshot protection
- ✅ Easy to integrate API

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "your-repo-url", from: "1.1.0")
]
```


### Basic Usage

```swift
import EIQScreenshot

// Protect an existing view
let myView = UILabel()
myView.text = "This text will not appear in screenshots"
view.addSubview(myView)

// Protect the view with secure method
myView.secure()
```


## How It Works

EIQScreenshot SDK uses iOS security mechanisms to ensure that specified view structures are not visible when screenshots are taken.

## Error Cases

The SDK may throw the following errors:

- `unsupportedOSVersion(version: Float)` - If iOS version is not supported (iOS 12.0 is required)
- `desiredContainerNotFound(_ containerName: String)` - If security container cannot be found

## Requirements

- iOS 12.0+
- Xcode 12.0+
- Swift 5.0+

## Limitations

- As it uses iOS internal mechanisms, behavior might vary between different iOS versions
- Not supported on devices with iOS versions earlier than 12.0
