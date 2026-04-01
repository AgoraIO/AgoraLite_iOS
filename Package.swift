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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.3.7")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3/AgoraRtcKit.xcframework.zip",
            checksum: "0671d467a6da49bcabc156064a02542733d121ad30034d2eab3bcb2120f99c65"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3/Agoraffmpeg.xcframework.zip",
            checksum: "0ab0e884c95bc767d521d74d538be843da62bebdd7c143fbedfd1fd386229fd1"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3/AgoraSoundTouch.xcframework.zip",
            checksum: "01e7806850c1cf43757caf1a486d578d99f594709e1c2851999c3f472711d6b7"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3/video_dec.xcframework.zip",
            checksum: "41c6d08339d2d90dd419a0cbfc6d8f6ffa66d876765c27c62a3d1b34577ed3f1"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
