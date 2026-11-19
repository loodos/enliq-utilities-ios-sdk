// swift-tools-version: 5.9
//
// EIQUtils iOS SDK — v1.1.0
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
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQJailbreakDetector.xcframework.zip",
            checksum: "3334727834bd7fe862af811a7c6327622e761db931e5a687788504b280715871"
        ),
        .binaryTarget(
            name: "EIQOfflineControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQOfflineControl.xcframework.zip",
            checksum: "7c47f1f62e45b5c611b47ca6bbad758d08f9af6cc32f60a25742edb87130a7c4"
        ),
        .binaryTarget(
            name: "EIQCommonUtils",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQCommonUtils.xcframework.zip",
            checksum: "8a371341154b113d9f4233a1617837f013dac570ba439fe63e9310be732785a5"
        ),
        .binaryTarget(
            name: "EIQUpdateControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQUpdateControl.xcframework.zip",
            checksum: "d7528ae1491575a27b0e6a01b9f6420cc274d7cfd4a1323c56614a298f6ffa0b"
        ),
        .binaryTarget(
            name: "EIQLocalization",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQLocalization.xcframework.zip",
            checksum: "9301425e1b9254ad2bc5def83cd090844e91fc52c4445effd5f2934501883767"
        ),
        .binaryTarget(
            name: "EIQAttributedBuilder",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQAttributedBuilder.xcframework.zip",
            checksum: "15907352a352e96f9de20781a15501740b89bef1fa739a5e5bd3ebb5349a7e41"
        ),
        .binaryTarget(
            name: "EIQScreenshot",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQScreenshot.xcframework.zip",
            checksum: "e07f1a1b65cbcd2eaf72290a9b24d1cec322c22bc128566340e64d8a53521a86"
        ),
        .binaryTarget(
            name: "EIQValidator",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQValidator.xcframework.zip",
            checksum: "2db216e8a59a1a777a68c8cf0f83a3d3531b4434570db56a579910cb0f7536ab"
        ),
        .binaryTarget(
            name: "EIQToast",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQToast.xcframework.zip",
            checksum: "05d1668ebb5bd1932acfe68fa9c4b0f5f412a6a5570784ab73150f122745f14c"
        ),
        .binaryTarget(
            name: "EIQAppIconChanger",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/v1.1.0/EIQAppIconChanger.xcframework.zip",
            checksum: "835cc7bd7d2007d503648846fd5aa71c90975920206b37eb6e132318e3eed06f"
        ),
    ]
)
