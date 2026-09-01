// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraLite_iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agoraffmpeg", "AgoraSoundTouch", "video_dec", "AgoraInfra_iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", .exact("1.3.5"))
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.4/AgoraRtcKit.xcframework.zip",
            checksum: "6e68c64cbde5b031b9d4f3b6e5649aa16c5f77a046a2ef0ac24dde1e3a6c1201"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.4/Agoraffmpeg.xcframework.zip",
            checksum: "4d5dc7e3b65692786fdb85af404a2f90ac3b460b419ca7306a21b0654ca9291f"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.4/AgoraSoundTouch.xcframework.zip",
            checksum: "c544154e8025a2048294d3cf023cc605047f0da07326b56e69402e71c8222901"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.4/video_dec.xcframework.zip",
            checksum: "4f6bf4dc0cdfae42d4f9acf989de9711854b38ac7f01d51ea270b421dab59750"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
