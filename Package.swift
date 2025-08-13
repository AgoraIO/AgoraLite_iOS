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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/AgoraRtcKit.xcframework.zip",
            checksum: "b13fcd15099beccf5ff980b4d63ea62d2c10b9d2d15e2c03dd70de03200582f1"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/Agoraffmpeg.xcframework.zip",
            checksum: "c4e8ba889dbbfc4fc01971c3aff4f4ce918bc92b9ab3892ff92fc40693d48f47"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/AgoraSoundTouch.xcframework.zip",
            checksum: "f95e6483086978e8ff1de8a3262efbdf207a20cc34ecdbf30d4b581c27fa6c43"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "2dba447801d08d7e96cd62c92764d21ed7655a29f7cb3f0fa2871931bc8b4b9e"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/video_dec.xcframework.zip",
            checksum: "c3c9f9f72e69c3f87a8d5f0b09e6d0968fe39c600c66187c1803e6f76fc0ed6c"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
