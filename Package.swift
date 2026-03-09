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
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.1.5/SecKit.xcframework.zip",
            checksum: "276796c6aab921c7a1cb7d75a0c09f6a2f5c8e5f95aaba8ce794fef616537165"
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
