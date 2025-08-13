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
            checksum: "e656e7542f4385b27f03ff47c5a2142f0455edd086e95e7d3706184bd96d7046"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/Agoraffmpeg.xcframework.zip",
            checksum: "5484b60beabad60eb58c4b3133627f46ef574c891af07fba3c2d15a44345393e"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/AgoraSoundTouch.xcframework.zip",
            checksum: "31c82ebb9aea510029cfaadbe63163b909bdcb3c6b50ae1c0acc1e586da593cf"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "b8b8628702e85fe6a0cfb03a2ab78d97596675f7d64fc0ad9c867028a090af86"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST1/video_dec.xcframework.zip",
            checksum: "8ebcc0f1dd98a235aa8cdf201b2a23bb3f48421ed4c1146c9ebbe35436351cd0"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
