// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "AgoraRtcKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "Basic", targets: ["aosl"]),
        .library(name: "RtcBasic", targets: ["AgoraRtcKit", "Agoraffmpeg", "AgoraSoundTouch"]),
        .library(name: "VideoCodecDec", targets: ["AgoraVideoDecoderExtension", "video_dec"]),
    ],
    targets: [
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.102/AgoraSoundTouch.xcframework.zip",
            checksum: "2886aedd350930c951f004d964b1734f9cdc413c98b8c123a196d8205f5ba5b6"
        ),
        .binaryTarget(
            name: "aosl",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.102/aosl.xcframework.zip",
            checksum: "1f0a3abb5082f49305bdc8765e0b9de339c7e195b441912041e148443c22542c"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.102/Agoraffmpeg.xcframework.zip",
            checksum: "0ecdc316d66f5b8979c5f8cb5e113cd101956351e117cae22cc28694dc6d7ac0"
        ),
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.102/AgoraRtcKit.xcframework.zip",
            checksum: "9eb3f456f1aadceda0a5c26ff55a044eef234983c1b98f7fb980fcdb757aeaff"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.102/video_dec.xcframework.zip",
            checksum: "8c893ec048e074f0a21655c23078227b731ae55f05badfc6036b1a7031ef307d"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.102/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "d17934733e3b561f4c473a274e25f8a412725b8de4c5c5351344f8868fe291be"
        ),
    ]
)