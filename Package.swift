// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SecKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SecKit",
            targets: ["SecKit", "SecKitC", "SecCryptoSwift", "SecSwiftyRSA", "Alamofire", "SecKitOneSignalSupport"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/OneSignal/OneSignal-iOS-SDK.git", .upToNextMajor(from: "5.4.2"))
    ],
    targets: [
        .binaryTarget(
            name: "SecKit",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.6/SecKit.xcframework.zip",
            checksum: "121d9ccdac3419607d9e3f5ef6de8c9fc771bda91ebb76000a4998ab0ab03bbb"
        ),
        .binaryTarget(
            name: "SecKitC",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.6/SecKitC.xcframework.zip",
            checksum: "22152e46aaf5f547fa391489ceab49f82d23b930bace93e7740c33c5f9817550"
        ),
        .binaryTarget(
            name: "SecCryptoSwift",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.6/SecCryptoSwift.xcframework.zip",
            checksum: "1e1e7c4101f1c896abdab582982eb43240757e6e21e200663d910a3d2c56510c"
        ),
        .binaryTarget(
            name: "SecSwiftyRSA",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.6/SecSwiftyRSA.xcframework.zip",
            checksum: "d5d7dda9cbcee2661a1fc5f5208690ab10fa412733ec0b360d5ba0afb5c06811"
        ),
        .binaryTarget(
            name: "Alamofire",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.6/Alamofire.xcframework.zip",
            checksum: "4e0bcd3d48d0edaae46914838e3511ed5b1f09b7126c0657a7ab74c1a2dac879"
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
