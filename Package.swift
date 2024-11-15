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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", .exact("0.0.17-test"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.18-test/AgoraRtcKit.xcframework.zip",
            checksum: "d6ff6eb73d6f2a6b1c4686bc84b019dd366693c93ff905f65fc07a8137f2f581"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.18-test/Agoraffmpeg.xcframework.zip",
            checksum: "c92ef9aaa630db00b8f9ce5183a9160021c98360856c49fbe196445b66dd8fdd"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.18-test/AgoraSoundTouch.xcframework.zip",
            checksum: "7a9e68fc72d91139bf57b5c2ad28cf80ba074b6d110d01c4dc5b9425d623d1d9"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.18-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "603962ace537de1fa51f70125f2a0d78e02952d985eb9df0ec122eec51f4f9fc"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.18-test/video_dec.xcframework.zip",
            checksum: "e774baff1b15671d097ea7e38ed2509b6c79ad35e5e7fc1949c42cd40fb5bc72"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
