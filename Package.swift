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
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.5/SecKit.xcframework.zip",
            checksum: "355304761376189fa452b698f1a2a8b49a5f870cc43bec0d78f69c158042d0c2"
        ),
        .binaryTarget(
            name: "SecKitC",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.5/SecKitC.xcframework.zip",
            checksum: "044ad02d60dc515855fd8bc5d1095e70e61cc1bef733afefd13a38b289a158ed"
        ),
        .binaryTarget(
            name: "SecCryptoSwift",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.5/SecCryptoSwift.xcframework.zip",
            checksum: "f1d236dd196442ce4b000eb3ef903dc688ecf371cf2168b98682958dfb2b9db0"
        ),
        .binaryTarget(
            name: "SecSwiftyRSA",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.5/SecSwiftyRSA.xcframework.zip",
            checksum: "8050d129584d262933b6c0828f439790cbbde859d0f4858ce0cdef60e0be0b83"
        ),
        .binaryTarget(
            name: "Alamofire",
            url: "https://github.com/CypherLLC/SecKit/releases/download/1.0.5/Alamofire.xcframework.zip",
            checksum: "4412756b810985a8b7a27687914baa3eaa943a28935600f0bae8dce902d9a64d"
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
