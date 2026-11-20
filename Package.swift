// swift-tools-version: 5.9
//
// EIQUtils iOS SDK — v1.2.0
// Bu dosya otomatik üretilir; elle düzenlemeyin.

import PackageDescription

let package = Package(
    name: "EIQUtils",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        /// Tüm modülleri içeren paket
        .library(name: "EIQUtils", targets: ["EIQJailbreakDetector", "EIQOfflineControl", "EIQCommonUtils", "EIQUpdateControl", "EIQLocalization", "EIQAttributedBuilder", "EIQScreenshot", "EIQValidator", "EIQToast", "EIQAppIconChanger"]),
        /// Tekil modüller
        .library(name: "EIQJailbreakDetector", targets: ["EIQJailbreakDetector"]),
        .library(name: "EIQOfflineControl", targets: ["EIQOfflineControl"]),
        .library(name: "EIQCommonUtils", targets: ["EIQCommonUtils"]),
        .library(name: "EIQUpdateControl", targets: ["EIQUpdateControl"]),
        .library(name: "EIQLocalization", targets: ["EIQLocalization"]),
        .library(name: "EIQAttributedBuilder", targets: ["EIQAttributedBuilder"]),
        .library(name: "EIQScreenshot", targets: ["EIQScreenshot"]),
        .library(name: "EIQValidator", targets: ["EIQValidator"]),
        .library(name: "EIQToast", targets: ["EIQToast"]),
        .library(name: "EIQAppIconChanger", targets: ["EIQAppIconChanger"]),
    ],
    targets: [
        .binaryTarget(
            name: "EIQJailbreakDetector",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQJailbreakDetector.xcframework.zip",
            checksum: "3e63505e1c98b2d9194502f35e849e2277599886b86f9ce232502f9dfc14e9d7"
        ),
        .binaryTarget(
            name: "EIQOfflineControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQOfflineControl.xcframework.zip",
            checksum: "79357a4d309a95512ca53d27c5522144bb88b6be5fcc11e3933da0db7ec9d399"
        ),
        .binaryTarget(
            name: "EIQCommonUtils",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQCommonUtils.xcframework.zip",
            checksum: "8b985e436f5f6e87341d2025b841d7c7af4b2e5f72bbd9d06751e28d6de6a0aa"
        ),
        .binaryTarget(
            name: "EIQUpdateControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQUpdateControl.xcframework.zip",
            checksum: "e1ef7c6adb546d5809e942c75469ee3e3becf80dd30fb199522653db98d7c9d8"
        ),
        .binaryTarget(
            name: "EIQLocalization",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQLocalization.xcframework.zip",
            checksum: "eac642b2e6b95e03986470bc00f1810a88ac624a89449eb63d586309c73c2103"
        ),
        .binaryTarget(
            name: "EIQAttributedBuilder",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQAttributedBuilder.xcframework.zip",
            checksum: "6bff0717478acb430824b43b7595c5710539825c767fa45da74855401ac715da"
        ),
        .binaryTarget(
            name: "EIQScreenshot",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQScreenshot.xcframework.zip",
            checksum: "c5c425b32d294da509727a6c23d06eeca9d553867463321e5f4859577a1e7c70"
        ),
        .binaryTarget(
            name: "EIQValidator",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQValidator.xcframework.zip",
            checksum: "08f0077c5dd835e56b9b1e7ecd2295ff451351b7ae24443a08f2f4ebe403b5f7"
        ),
        .binaryTarget(
            name: "EIQToast",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQToast.xcframework.zip",
            checksum: "ef5b6a532745cab0df9078000cca84dc4ae6b5c0083ecf97eb10e98dfdfb96cd"
        ),
        .binaryTarget(
            name: "EIQAppIconChanger",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.2.0/EIQAppIconChanger.xcframework.zip",
            checksum: "f759328b4e8118f60af9a7313822bd3a29bbf23c7b5d5892b5f3ad9de8a187e6"
        ),
    ]
)
