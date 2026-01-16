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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.3.5")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.2/AgoraRtcKit.xcframework.zip",
            checksum: "c167670e2652285833c3c2beab7e89e896bf9c44fe1f5c6ef349d22aade914a3"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.2/Agoraffmpeg.xcframework.zip",
            checksum: "3075100586a913a4848740db1263e59266b301a79ecfe918e8d4a39861af5022"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.2/AgoraSoundTouch.xcframework.zip",
            checksum: "13bcaa94ce1f36c589819d1eb555363d08ab6f4d785635691cc6945465db1560"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.2/video_dec.xcframework.zip",
            checksum: "528cc1c6400047ade872b4a7be2747a05c583d004d5c895a3c0b146ecb844dab"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
