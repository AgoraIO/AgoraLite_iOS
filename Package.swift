// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "AgoraRtcKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "AgoraRtcKit", targets: ["AgoraSoundTouch", "aosl", "Agoraffmpeg", "AgoraRtcKit", "video_dec", "AgoraVideoDecoderExtension"]),
    ],
    targets: [
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/AgoraSoundTouch.xcframework.zip",
            checksum: "1c2853c2846e6200ff213d6e1e19b013323ed745ad05a04e3cff111e53de81cc"
        ),
        .binaryTarget(
            name: "aosl",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/aosl.xcframework.zip",
            checksum: "cf8aa62749dd4be0bf3ccb78ec4cfef9e71a025ba7b6d5aae26a482638c2dfc8"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/Agoraffmpeg.xcframework.zip",
            checksum: "3181d9d49513a6b1029f30a32ec506d1610b18b2dd47b1f6e41a180eec77f587"
        ),
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/AgoraRtcKit.xcframework.zip",
            checksum: "0e988df3370e8bf371e8e713a8ef818b489f6882e67071af60fd2343736b74cc"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/video_dec.xcframework.zip",
            checksum: "bcbc68f608e095990bf0e8120d70dd80cac7cd49287b76de7b8804d841946f25"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "927999c1c2a97c8a844abab95c0b605fdbbf1c9918f3358d5924204038f0b56b"
        ),
    ]
)