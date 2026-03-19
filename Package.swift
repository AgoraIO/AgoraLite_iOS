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
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3.test/AgoraRtcKit.xcframework.zip",
            checksum: "1da2db18c9f0d2ccac7b7e53e36170c51ed0258eca28d9aa95724f7dbeee882f"
        ),
        .binaryTarget(
            name: "Agoraffmpeg",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3.test/Agoraffmpeg.xcframework.zip",
            checksum: "eaf83ec9f06fe9b6889ab5d34664a5ef926b2100211bc3fb89828dbc32493836"
        ),
        .binaryTarget(
            name: "AgoraSoundTouch",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3.test/AgoraSoundTouch.xcframework.zip",
            checksum: "9830a16403e403acbf3efcc0075536fb5df77f4ad15d5e99cd28db91a363ade1"
        ),
        .binaryTarget(
            name: "video_dec",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/4.5.3.test/video_dec.xcframework.zip",
            checksum: "c6ab5d17a3e5999cd21edc7a4c783079643a2a220adc85a3525d30c44a8a5125"
        ),
        .target(
            name: "AgoraInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
