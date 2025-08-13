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
            url: "https://download.agora.io/swiftpm/AgoraRtcKit-4.6.0.TEST1.zip",
            checksum: "f261d48cd7488e5c6cc70ca3b23de4f5c96f842abf1538d1133b57c4cad6ede6"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/Agoraffmpeg-4.6.0.TEST1.zip",
            checksum: "f370d7e97c97d9a3f3167a085191cb1a19b804ba4a5dd0eb8825b4d091c9c627"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraSoundTouch-4.6.0.TEST1.zip",
            checksum: "e2f7272d2c9117f38afa6d9daaaf0dde5db3183e7ab3a94a0736cba5417f063e"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraVideoDecoderExtension-4.6.0.TEST1.zip",
            checksum: "3ddc184929f6af2eb24cf94f194538170d88c3a9c9da406e217c280aad30c008"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/video_dec-4.6.0.TEST1.zip",
            checksum: "1398ee706554a88feba9ae9564e9ebf84bfcd50562228a7becdd616e59f4dc4e"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
