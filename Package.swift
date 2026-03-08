import PackageDescription

let package = Package(
    name: "SecKit",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "SecKit", targets: ["SecKit"])
    ],
    targets: [
        .binaryTarget(
            name: "SecKit",
            url: "https://github.com/<YOUR_ORG>/<YOUR_REPO>/releases/download/1.0.0/SecKit.xcframework.zip",
            checksum: "0ba13f2cf4545d57da85d8ce31c54c9e5f182d05f5db3b537fce1873909db101"
        )
    ]
)
