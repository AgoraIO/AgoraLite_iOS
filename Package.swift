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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.2-test/AgoraRtcKit.xcframework.zip",
            checksum: "87917e5681d0b7bf21ee1097c060dddc1b35705a24e805965cfbc596f7b32245"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.2-test/Agoraffmpeg.xcframework.zip",
            checksum: "13315ee3849d61b83053dac3a3c95be3e3566e500389d49d3339f9d282ca7ccf"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.2-test/AgoraSoundTouch.xcframework.zip",
            checksum: "bb951a182a9e4284d9f64eea8a3f26f4a1c84af4c46b77ef8f9661d5a18e831c"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.2-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "70891b3e329784c9d22ea53d8f190a8f39e0668f6447c92033b15205b777567c"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.2-test/video_dec.xcframework.zip",
            checksum: "7919541ed37a3d4e2f34dfabf252949970c6d5975c5d6e3377c43684412deddb"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
