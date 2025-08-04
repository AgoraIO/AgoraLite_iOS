// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraLite_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agoraffmpeg", "AgoraSoundTouch", "{group_id}Infra_iOS"]),
        .library(name: "VideoCodecDec", targets: ["AgoraVideoDecoderExtension", "video_dec"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.2.30")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST/AgoraRtcKit.xcframework.zip",
            checksum: "d37893b412c7b523dddb91c9de51f0d97136017af1f4ffdcb6c9344147f3eeb0"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST/Agoraffmpeg.xcframework.zip",
            checksum: "2fa46ecf142bfad78add9d7120eec5da74d51dcfe21fa616d4944ca1fae52170"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST/AgoraSoundTouch.xcframework.zip",
            checksum: "581d791de7586b9d9e46f3bf37976c755869e7aa6594749318cf9fbdc305f8fb"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "1cfd2e5e5dc6d721fec72ded1ab2610e150e8df9a7fb9756632427b517c4204b"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0.TEST/video_dec.xcframework.zip",
            checksum: "8298cea0fe661174df092c1a6adbf6d683a708cb52bb87f32295d94647a443c5"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
