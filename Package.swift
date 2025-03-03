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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.1/AgoraRtcKit.xcframework.zip",
            checksum: "5ec67a28103bfd72130bf488be102b9df4d9f375ccf1ed7011369bd8725d4b38"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.1/Agoraffmpeg.xcframework.zip",
            checksum: "5b463e8d68131c11e4cc0895e2eaa7fd30442141b8434b5ba816ad0cc41b7728"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.1/AgoraSoundTouch.xcframework.zip",
            checksum: "40521dd01a866550db37de07836b80d827245df7fe740b87ef2563e753e7762d"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.1/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "827a572b7d893fa970a29ccc0594fef175d12fd6b1efaf570e02c09de41b2b98"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.1/video_dec.xcframework.zip",
            checksum: "4d9decaa6548614cd8231e893dd4a525160563459a6d3907375ff29f69750597"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
