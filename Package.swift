// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "AgoraRtcKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "AgoraInfra_iOS", targets: ["aosl"]),
    ],
    targets: [
        .binaryTarget(
            name: "aosl",
            url: "https://download.agora.io/swiftpm/AgoraLite_iOS/0.0.17-test/aosl.xcframework.zip",
            checksum: "0d1f74c31eee9d939afd47914cc0b71536d92153dc676cbf7ce5d30eafa9e5d8"
        ),
    ]
)