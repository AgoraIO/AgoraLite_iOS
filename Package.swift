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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", .exact("0.0.16-test"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.3-test/AgoraRtcKit.xcframework.zip",
            checksum: "c14bd783fa4cc671c2d6401ce0b79256f6650bb3b136499d88046b0e2fc514c8"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.3-test/Agoraffmpeg.xcframework.zip",
            checksum: "9a2aa2a8a9bcf0418e8443554c3ae613228b66925c591fb97c2a37d31306a5d9"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.3-test/AgoraSoundTouch.xcframework.zip",
            checksum: "54ef29904bfece427691230f6e2d2e4a54c5391d16c7edb462c27cb493bc72fb"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.3-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "5f1aaba0e178e9705c5cfb82a15aaef7e5e22c04a0d0e8c461b045c6ae13c5c8"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.3-test/video_dec.xcframework.zip",
            checksum: "f1cd1f22624fafa93e7c7552d0ec646c4e71ea4647f096bbdb1e9b5230541683"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
