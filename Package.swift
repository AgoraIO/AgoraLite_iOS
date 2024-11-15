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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", .exact("0.0.4-test"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.4-test/AgoraRtcKit.xcframework.zip",
            checksum: "1c3d9d741624ba09a41d330dfabe8238a11a50f8831aed9112acf5e4f56b5c8a"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.4-test/Agoraffmpeg.xcframework.zip",
            checksum: "9062bcd2144725ae6a39eae3d6d5ea8e78850e6c42bf50536327646fd87a35a9"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.4-test/AgoraSoundTouch.xcframework.zip",
            checksum: "871078dc26073028b45214044cec330fa5e6c961b2cec8f6adb6a176369f6a64"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.4-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "b9ca1e15a85356be12701598c02aff021fc6d28ecbf61eb9a10d96a3342a4a86"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.4-test/video_dec.xcframework.zip",
            checksum: "8130f0d8e02607d248a21a2be52e802df0ba5bb7966a86497d69d4daed5e09d6"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
