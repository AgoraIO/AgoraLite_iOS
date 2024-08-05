// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "AgoraRtcKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "AgoraRtcKit", targets: ["AgoraSoundTouch.xcframework", "aosl.xcframework", "Agoraffmpeg.xcframework", "AgoraRtcKit.xcframework", "video_dec.xcframework", "AgoraVideoDecoderExtension.xcframework"]),
    ],
    targets: [
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/AgoraSoundTouch.xcframework.zip",
            checksum: "14ca2f70ed5135501b4fbf526630e77362650800fd56135bf988d0b06b3a8552"
        ),
        .binaryTarget(
            name: "aosl",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/aosl.xcframework.zip",
            checksum: "f7d725649a5fa9da03fdc43a8f15f21f6b0d505c146d3cd6e3569986af144a3c"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/Agoraffmpeg.xcframework.zip",
            checksum: "cbf82fff559283e2d1cd0d579c3d7ce1f5df5b72a581635a8ecd543f01f5a03c"
        ),
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/AgoraRtcKit.xcframework.zip",
            checksum: "c2771a4453d04d6478aff1d2cd0c8efec7e0a895ca1d7fa7a0d98b89d1e455a4"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/video_dec.xcframework.zip",
            checksum: "b8679fc7b15b330154659a7c19a835178023070b6f1aee5fe4e7b645f00f025a"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "9c4a06d3e3add5a92a19bf88c2b411aba852c113208e0dc4e3cd9b29e568771b"
        ),
    ]
)