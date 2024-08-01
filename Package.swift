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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0.test/AgoraSoundTouch.xcframework.zip",
            checksum: "051d4e3a8cea0fbccb42475cfb41debe213c05a844d6f91066e826761377cd43"
        ),
        .binaryTarget(
            name: "aosl",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0.test/aosl.xcframework.zip",
            checksum: "d69954bb47f3f3808e842f4f5297ec42e51dce04d617e4fba45a37850dcea912"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0.test/Agoraffmpeg.xcframework.zip",
            checksum: "4fe5face4732afbc01c0ec2641a3baef96edfa7fff26b42762753ee51e0aee8f"
        ),
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0.test/AgoraRtcKit.xcframework.zip",
            checksum: "2b56d7fabdc142a406344a5e9e27cddca3f029a2bbda73cbbd923e0571f0a356"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0.test/video_dec.xcframework.zip",
            checksum: "42eb119ce96c6fc9d48535fedc1176bca1ce735fe30e2ca6ace9216b9e987269"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.4.0.test/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "ff47caf7dca1ef2c73e6a5914d844932b249f4b412eeb4f5a1b51e30dff05ad9"
        ),
    ]
)