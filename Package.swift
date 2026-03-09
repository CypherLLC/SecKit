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
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.1.2/SecKit.xcframework.zip",
            checksum: "ef8d15e4d2aada7ea70500210e3f0683fccf7dc3250aa1f0a7bdb601c08d3de2"
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
