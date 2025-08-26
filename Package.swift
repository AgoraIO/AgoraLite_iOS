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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0/AgoraRtcKit.xcframework.zip",
            checksum: "dcc11f3436b93f54666b3ed0f3c93e7b846ad3e473df6e73bfd7fc70b9f7ddc4"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0/Agoraffmpeg.xcframework.zip",
            checksum: "34a43d776510c05a25f30f8e4087f6ea7b92c698bfec0606274e66a4b7339de5"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0/AgoraSoundTouch.xcframework.zip",
            checksum: "a500ec035416294472bd7793ba912bdd7eb306f28cded2fb058b2f5bce779f25"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "665f9e6e62eef269205cc708e6afc1045a4e3155eba6fc4201a92ab27ecacf3c"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.6.0/video_dec.xcframework.zip",
            checksum: "68745cc3539579f9b34796757f6043b3c623eb78c6600edc8c803bcbcdbc457b"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
