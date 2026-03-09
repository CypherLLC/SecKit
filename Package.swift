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
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.1.3/SecKit.xcframework.zip",
            checksum: "de2f1ee36e89339dccf12bb4f0eedfca8c0a246e93dc745f93887f63acce1b5e"
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
