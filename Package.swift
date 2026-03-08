// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SecKit",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "SecKit", targets: ["SecKit", "SecKitOneSignalSupport"])
    ],
    dependencies: [
        .package(url: "https://github.com/OneSignal/OneSignal-iOS-SDK.git", from: "5.4.2")
    ],
    targets: [
        .binaryTarget(
            name: "SecKit",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.4/SecKit.xcframework.zip",
            checksum: "79b769133ef04aa40d33077363fc12d097d5f012a6e789c523c6dfbbe7330f08"
        ),
        .target(
            name: "SecKitOneSignalSupport",
            dependencies: [
                .product(name: "OneSignalFramework", package: "OneSignal-iOS-SDK")
            ],
            path: "Sources/SecKitOneSignalSupport"
        )
    ]
)
