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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "0.0.14-test")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.16-test/AgoraRtcKit.xcframework.zip",
            checksum: "ab0cf1af6045b11471529d77617731377472df55f3c4e03967fd93069b754d59"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.16-test/Agoraffmpeg.xcframework.zip",
            checksum: "523475871745ddd1d76ec8d30962c368cc10ba26cd8fc9ac1e6a91232a5c3de2"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.16-test/AgoraSoundTouch.xcframework.zip",
            checksum: "4ea5085eaf28fcf7183d86d3daf828e602df61e96021247e542d77f62d94944a"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.16-test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "aebdb139aae3c5beaa204dcf6998208a4d94f2e521f2ded875ee39ef14344f03"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.16-test/video_dec.xcframework.zip",
            checksum: "dd6b6ad6137eecd76e0c3756859f8fa2dba5a2d508a98374eddbc8e8d8d92e1f"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
