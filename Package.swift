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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.2.13")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.0/AgoraRtcKit.xcframework.zip",
            checksum: "8c6bbb655dccbf3b526a23a9b4ca2492db19fe2a6d27a8341bb39641226e785a"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.0/Agoraffmpeg.xcframework.zip",
            checksum: "8f08a4559acb1752449d49c8966b50331b1151f7e8b60d5f1367a871cda7fd35"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.0/AgoraSoundTouch.xcframework.zip",
            checksum: "738f9f9fc77844f71cd50b29eee88814d126bbdff30f0380affeb72128d509e5"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.0/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "edfbac5b20666b1613cce97677dbf05f855079b47455e49d1fc499feea7ff01b"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.0/video_dec.xcframework.zip",
            checksum: "85aef4c6ae168b706b3f2e1d49ba1586db11377f04c94bed9cf25b54421992a7"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
