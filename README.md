<p align="center">
  <img src="https://i.ibb.co/zh0Lrz6J/test.png" alt="Enliq" width="320"/>
</p>

<h1 align="center">EIQUtils iOS SDK</h1>

<p align="center">
  <a href="https://github.com/loodos/enliq-utilities-ios-sdk/releases/latest"><img src="https://img.shields.io/github/v/release/loodos/enliq-utilities-ios-sdk?label=release&sort=semver" alt="Latest release"/></a>
  <img src="https://img.shields.io/badge/platform-iOS%2015.0%2B-blue.svg" alt="Platform iOS 15.0+"/>
  <a href="https://swift.org/package-manager"><img src="https://img.shields.io/badge/SPM-compatible-brightgreen.svg" alt="Swift Package Manager compatible"/></a>
  <img src="https://img.shields.io/badge/distribution-XCFramework-lightgrey.svg" alt="Binary XCFramework"/>
</p>

<p align="center">
  Security, connectivity, update control, localization, validation and UI helpers<br/>
  for iOS apps — by <a href="https://www.enliq.com">Enliq</a>.
</p>

<p align="center">
  <a href="https://developer.enliq.com"><b>Developer Docs</b></a> ·
  <a href="https://github.com/loodos/enliq-utilities-ios-sdk/releases"><b>Releases</b></a> ·
  <a href="#support"><b>Support</b></a>
</p>

---

## Contents

- [Requirements](#requirements)
- [Libraries](#libraries)
- [Installation](#installation)
- [Migrating to 1.1](#migrating-to-11)
- [Support](#support)

## Requirements

| | Minimum |
|---|---|
| iOS | 15.0 |
| Xcode | 16.0 |
| Swift | 5.9 |

Every utility is distributed as a precompiled **binary XCFramework** built with library evolution. Internal dependencies are embedded, so there are **no third-party dependencies** to resolve in your project.

## Libraries

Add only the utilities you need, or the `EIQUtils` product to get all of them.

| Library | Description | Guide |
|---|---|---|
| `EIQJailbreakDetector` | Detects jailbroken devices | [Guide](docs/EIQJailbreakDetector.md) |
| `EIQScreenshot` | Protects selected views from screenshots and screen recording | [Guide](docs/EIQScreenshot.md) |
| `EIQOfflineControl` | Monitors connectivity and connection type (Wi-Fi, cellular, none) | [Guide](docs/EIQOfflineControl.md) |
| `EIQUpdateControl` | Force / soft update decisions from backend rules | [Guide](docs/EIQUpdateControl.md) |
| `EIQLocalization` | Remote-configured, runtime-switchable localization | [Guide](docs/EIQLocalization.md) |
| `EIQValidator` | Rule-based text field validation | [Guide](docs/EIQValidator.md) |
| `EIQToast` | Customizable toast notifications | [Guide](docs/EIQToast.md) |
| `EIQAttributedBuilder` | Chainable `NSAttributedString` builder | [Guide](docs/EIQAttributedBuilder.md) |
| `EIQAppIconChanger` | Switches alternate app icons at runtime | [Guide](docs/EIQAppIconChanger.md) |
| `EIQCommonUtils` | Common extensions and helpers (device, clipboard, colors, views…) | [Guide](docs/EIQCommonUtils.md) |

## Installation

### Swift Package Manager

**Xcode:** `File` → `Add Package Dependencies…` → enter the URL below → choose **Up to Next Major Version** → pick the libraries for your target.

```
https://github.com/loodos/enliq-utilities-ios-sdk
```

**Package.swift:**

```swift
dependencies: [
    .package(url: "https://github.com/loodos/enliq-utilities-ios-sdk.git", .upToNextMajor(from: "1.1.0"))
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "EIQOfflineControl", package: "enliq-utilities-ios-sdk"),
            .product(name: "EIQUpdateControl", package: "enliq-utilities-ios-sdk"),
            // or everything:
            // .product(name: "EIQUtils", package: "enliq-utilities-ios-sdk"),
        ]
    )
]
```

Import each utility by its module name, e.g. `import EIQOfflineControl`.

## Migrating to 1.1

- Minimum deployment target is now **iOS 15.0**.
- Install from this repository (`enliq-utilities-ios-sdk`); the package name in `.product(…, package:)` is `enliq-utilities-ios-sdk`.
- `EIQUpdateControl` no longer adds `json-logic-swift` to your project. If your app uses it directly, add it as your own dependency.
- If you previously used the utilities from source, run **Product → Clean Build Folder** (or delete DerivedData) once after switching.

## Support

- **Integration guides & changelog:** [developer.enliq.com](https://developer.enliq.com)
- **Bug reports:** [GitHub Issues](https://github.com/loodos/enliq-utilities-ios-sdk/issues)
- **Account questions:** contact your Enliq account manager.

---

<p align="center">© Enliq. All rights reserved.</p>
