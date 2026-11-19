<p align="center">
  <img src="https://i.ibb.co/zh0Lrz6J/test.png"/>
</p>

> **Note:** The update rule file must be uploaded to the CDN with the filename **`YOUR_LANG_CODE.json`**.

> **Note:** The localization file name on the CDN must match the `language` parameter you provide (e.g., passing `"tr"` will request **`tr.json`** from the CDN).

---

# EIQLocalization

`EIQLocalization` is a Swift package that manages app localization dynamically via remote configuration.  
It automatically fetches, caches, and provides localized strings from a backend or CDN source.

## Features

- Dynamically fetches localization files from a remote backend or CDN.
- Caches fetched language files locally for offline access.
- Provides convenient access to localized strings via key lookup.
- Supports clearing and reloading localization data.

## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

Add the following dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(
        url: "https://github.com/loodos/enliq-utilities-ios-sdk.git",
        .upToNextMajor(from: "1.1.0")
    )
],
targets: [
    .target(
        name: "{Target Name}",
        dependencies: [
            .product(name: "EIQLocalization", package: "enliq-utilities-ios-sdk")
        ]
    )
]
```

## Usage

### 1. Configure Base URL

Before fetching localization data, configure the CDN or backend URL:

```swift
EIQLocalization.shared.configure(baseURL: "https://cdn-dev.enliq.com/enliqApp/")
```

### 2. Fetch Localization File

This method retrieves the localization JSON from the backend and caches it locally.

```swift
EIQLocalization.shared.getLocalizable(language: "tr") { isSuccess in
    if isSuccess {
        print("✅ Localization data loaded successfully.")
    } else {
        print("⚠️ Failed to load localization data.")
    }
}
```

### 3. Retrieve a Localized String

Once the localization file is fetched, you can easily retrieve any key:

```swift
let value = EIQLocalization.shared.get(with: "splash_test")
print(value ?? "Key not found")
```

Or dynamically with string arguments:

```swift
let welcomeText = EIQLocalization.shared.get(with: "welcome_message", userName)
```

### 4. Clear Cached Language File

If you need to reset or clear the cached localization file:

```swift
EIQLocalization.shared.clear()
```

## Notes

> The localization file is automatically cached under the app’s `Documents` directory and will be reused if the network is unavailable.
