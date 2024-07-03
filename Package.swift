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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.101/AgoraSoundTouch.xcframework.zip",
            checksum: "4b582a42b4ba8ca77f816dda520a59d9bc047c44285c048760de0d4f64b9f768"
        ),
        .binaryTarget(
            name: "aosl",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.101/aosl.xcframework.zip",
            checksum: "2069b5a8abd75323a96aea761bcbd24f455fd85fb09e516a09db4af41880ff28"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.101/Agoraffmpeg.xcframework.zip",
            checksum: "53fc0320cad37753ec324cb59c7baa5a5c03ebdf983ba129b523271d173832f6"
        ),
        .binaryTarget(
            name: "AgoraRtcKit",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.101/AgoraRtcKit.xcframework.zip",
            checksum: "55c80d1ac27be7021739d168aa746dae922fa26aa94a4abc91cd8c8085caf9a1"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.101/video_dec.xcframework.zip",
            checksum: "31c7d65f6d9293f0be2f4bf12e2ae980926d17fe44505560c2736fc8b89ec9e8"
        ),
        .binaryTarget(
            name: "AgoraVideoDecoderExtension",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.101/AgoraVideoDecoderExtension.xcframework.zip",
            checksum: "cfe5505b920c8940211598de513cec952efaaae4fe2d37da2b1536a56eb7b1e3"
        ),
    ]
)