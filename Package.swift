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
            checksum: "d4f5b3a8c1f3b2d7e1f6c8a3e0a9b7c5a6f4e2b1c3d8e9f0b2c1d3e4f5a6b7c8"
        ),
 
        /// `EIQOfflineControl` target
        .binaryTarget(
            name: "EIQOfflineControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/0.0.1/eiqofflinecontrol.xcframework.zip",
            checksum: "d4f5b3a8c1f3b2d7e1f6c8a3e0a9b7c5a6f4e2b1c3d8e9f0b2c1d3e4f5a6b7c8"
        ),
 
        /// `EIQCommonUtils` target
        .binaryTarget(
            name: "EIQCommonUtils",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/0.0.1/eiqcommonutils.xcframework.zip",
            checksum: "d4f5b3a8c1f3b2d7e1f6c8a3e0a9b7c5a6f4e2b1c3d8e9f0b2c1d3e4f5a6b7c8"
        )
    ]
)
