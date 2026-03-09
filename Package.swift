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
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.7/SecKit.xcframework.zip",
            checksum: "599a07a6e6ea05af6eeea80f6b8e639d1ba605605a8577ba5445a44c392e3b33"
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
