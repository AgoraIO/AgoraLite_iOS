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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "0.0.14-test")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.14-test/AgoraRtcKit.xcframework.zip",
            checksum: "be37d47e92ed30e7eddc74d008c91abec880a603a3c120c55155d9c0c064ad91"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.14-test/Agoraffmpeg.xcframework.zip",
            checksum: "229d34c9565288d98b7b95d69fb51c2e0326afdf7b3594381f7378967711abbd"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.14-test/AgoraSoundTouch.xcframework.zip",
            checksum: "1d41d2cb1eb57fa0e792807af0788d1991b60c8b6c542a561b14ef82b8fa74dd"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.14-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "e9bd8d4ad330ed960fb8b6fde0a57038c325f6cb1defcaf3d97184ed826dbac3"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.14-test/video_dec.xcframework.zip",
            checksum: "c93436025be6cb68624534164fc47732997fdd29b9cd1fa9692981a285316f0a"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
