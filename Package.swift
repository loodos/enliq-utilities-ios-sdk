// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "EIQUtils",
    platforms: [.iOS(.v13)],
    products: [
        /// **Unified package**: It contains all sub-packages
        .library(
            name: "EIQUtils",
            targets: ["EIQUtils"]
        ),
        /// **Single packages**
        .library(
            name: "EIQJailbreakDetector",
            targets: ["EIQJailbreakDetector"]
        ),
        .library(
            name: "EIQOfflineControl",
            targets: ["EIQOfflineControl"]
        ),
        .library(
            name: "EIQCommonUtils",
            targets: ["EIQCommonUtils"]
        )
    ],
    targets: [
        /// `EIQUtils` target
        .target(
            name: "EIQUtils",
            dependencies: [
                "EIQJailbreakDetector",
                "EIQOfflineControl",
                "EIQCommonUtils"
            ],
            path: "Sources/Exported"
        ),
        
        /// `EIQJailbreakDetector` target
        .binaryTarget(
            name: "EIQJailbreakDetector",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/0.0.1/eiqjailbreakdetector.xcframework.zip",
            checksum: "3b7a2a5c419f02d2e8a434586533037a4034a186c6d13cb64011ac76f63a6339"
        ),
 
        /// `EIQOfflineControl` target
        .binaryTarget(
            name: "EIQOfflineControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/0.0.1/eiqofflinecontrol.xcframework.zip",
            checksum: "4c681e0fbe0ec753fa8f7d0457d2a242911ad75df09d8808cd99f8c3b6323145"
        ),
 
        /// `EIQCommonUtils` target
        .binaryTarget(
            name: "EIQCommonUtils",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/0.0.1/eiqcommonutils.xcframework.zip",
            checksum: "b771e3ce0b810d1806ae80d7dcf5d79610af09683fd5a30ed164ab3e44b23910"
        )
    ]
)
