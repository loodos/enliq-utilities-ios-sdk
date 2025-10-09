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
            checksum: "59e453667e458af46c899b08a798b26b87879f8e86de529e4bd50e0e3e6ba4fc"
        ),
        /// `EIQOfflineControl` target
        .binaryTarget(
            name: "EnliqOfflineControl",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/1.0.0/eiqofflinecontrol.xcframework.zip",
            checksum: "7c9ecd078463bec2201ae5209335b69effce26b336fb62343e1b8a6ed64ce69b"
        ),
        /// `EIQCommonUtils` target
        .binaryTarget(
            name: "EnliqCommonUtils",
            url: "https://github.com/loodos/enliq-utilities-ios-sdk/releases/download/1.0.0/eiqcommonutils.xcframework.zip",
            checksum: "b5879404730bbd034e64808afa2ba0c32077d176d6ccc56fcc08094101d03607"
        )
    ]
)
