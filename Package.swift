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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.17-test/AgoraRtcKit.xcframework.zip",
            checksum: "51e30052a4ece1c373a84d777636e562d85e53bb0ad6a7a52e77df65d9176cd8"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.17-test/Agoraffmpeg.xcframework.zip",
            checksum: "a1870e1e6c4f8d091be817d7332b5683a5bda0c4c7a334e0a4f6881b5b31e05c"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.17-test/AgoraSoundTouch.xcframework.zip",
            checksum: "0ebf3e532f29f8f713194a73a57690956b6ad7e1d67c185fbe8a103367078c0b"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.17-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "2e9be9ab035fc4edb18af721c15cf4cf791a799ce516fd2674572146fbc6e277"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.17-test/video_dec.xcframework.zip",
            checksum: "d7ec38f9dc4d770ea17eb52761bbd50704ba33f09995971ddd830a8d1d4aef88"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
