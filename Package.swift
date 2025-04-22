// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraLite_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agoraffmpeg", "AgoraSoundTouch", "AgoraInfra_iOS"]),
        .library(name: "VideoCodecDec", targets: ["AgoraVideoDecoderExtension", "video_dec"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.2.13-rc.1")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.2/AgoraRtcKit.xcframework.zip",
            checksum: "f39f1a8a3eec6cf1437befef0ac676ca34db725ed987ad5890965c2aa7ea77d5"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.2/Agoraffmpeg.xcframework.zip",
            checksum: "371853c8d279903a1c0348a1614928caaaf39c0f559ff35eff28d9013a41a7a6"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.2/AgoraSoundTouch.xcframework.zip",
            checksum: "69522ece52eeab89612f9460ac20d59943df82051788e71277c581a570dcb92a"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.2/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "b50186d7cdab0f9d34297ba8b03b14ab4ddd5f429ac1f7fabef290315600ecc4"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.2/video_dec.xcframework.zip",
            checksum: "4b0d1b89a53ab6550ac5ea6fd1db93d72f3441f764efa392f811ee5a698cfa18"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
