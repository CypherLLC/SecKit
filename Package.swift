// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SecKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SecKit",
            targets: ["SecKit", "SecKitRuntimeDeps"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/OneSignal/OneSignal-iOS-SDK.git", .upToNextMajor(from: "5.4.2"))
    ],
    targets: [
        .binaryTarget(
            name: "SecKit",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.1.0/SecKit.xcframework.zip",
            checksum: "4cc781ca2ccfd5b9021f4bdc5bb867ff050969623bbee7d1d35dc7c0b9283ec9"
        ),
        .target(
            name: "SecKitRuntimeDeps",
            dependencies: [
                .product(name: "OneSignalFramework", package: "OneSignal-iOS-SDK")
            ],
            path: "Sources/SecKitRuntimeDeps"
        )
    ]
)
