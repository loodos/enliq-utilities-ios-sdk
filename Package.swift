// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "EIQUtils",
    platforms: [.iOS(.v13)],
    products: [
        /// **Unified package**: It contains all sub-packages
        .library(
          name: "EnliqUtils",
          targets: ["EnliqUtils"]
        ),
        /// **Single packages**
        .library(
            name: "EnliqJailbreakDetector",
            targets: ["EnliqJailbreakDetector"]
        ),
        .library(
            name: "EnliqOfflineControl",
            targets: ["EnliqOfflineControl"]
        ),
        .library(
            name: "EnliqCommonUtils",
            targets: ["EnliqCommonUtils"]
        )
    ],
    targets: [
        /// `EIQUtils` target
        .target(
            name: "EnliqUtils",
            dependencies: [
                "EnliqJailbreakDetector",
                "EnliqOfflineControl",
                "EnliqCommonUtils"
            ],
            path: "Sources"
        ),
        /// `EIQJailbreakDetector` target
        .binaryTarget(
            name: "EnliqJailbreakDetector",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/1.0.0/eiqjailbreakdetector.xcframework.zip",
            checksum: "3b7a2a5c419f02d2e8a434586533037a4034a186c6d13cb64011ac76f63a6339"
        ),
        /// `EIQOfflineControl` target
        .binaryTarget(
            name: "EnliqOfflineControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/1.0.0/eiqofflinecontrol.xcframework.zip",
            checksum: "4c681e0fbe0ec753fa8f7d0457d2a242911ad75df09d8808cd99f8c3b6323145"
        ),
        /// `EIQCommonUtils` target
        .binaryTarget(
            name: "EnliqCommonUtils",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/1.0.0/eiqcommonutils.xcframework.zip",
            checksum: "b771e3ce0b810d1806ae80d7dcf5d79610af09683fd5a30ed164ab3e44b23910"
        )
    ]
)
