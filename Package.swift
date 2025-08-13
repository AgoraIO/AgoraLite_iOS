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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST2/AgoraRtcKit.xcframework.zip",
            checksum: "f76647e36d90ad67bc8ace9f35eca82b200ca8fad05337479da0ba36b100be18"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST2/Agoraffmpeg.xcframework.zip",
            checksum: "63b5d4c43db71c2cdf4d52d820ba52d387127939af96043de91ddd3711fcdd1a"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST2/AgoraSoundTouch.xcframework.zip",
            checksum: "9b081bb6d9e3715513814af8134f631c070f9beb516e7d5125f83f6d201af248"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST2/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "1b337dfef8f5d936b6de974073ca7198d15081b79106e66529830ce6d005a864"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST2/video_dec.xcframework.zip",
            checksum: "779bb53d43d72c77f14475e8248cdf32cf77a8fcfc2bf13cf17a06cc98dd3f20"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
