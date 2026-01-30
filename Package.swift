// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "LyraPaymentSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LyraPaymentSDK",
            targets: ["LyraPaymentSDKTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/MageSantana/Material-test-spm.git",
            exact: "1.0.22"
        ), 
        .package(
            url: "https://github.com/SnapKit/SnapKit.git",
            .upToNextMajor(from: "5.0.1")
        )
    ],
    targets: [
        .binaryTarget(
            name: "LyraPaymentSDKBinary",
            url: "https://raw.githubusercontent.com/MageSantana/ios-sdk/1.0.0/LyraPaymentSDK.xcframework.zip",
            checksum: "b05ea94b21671e7156cefa0702a3e332050fcacb54fe45bbb633bf7aeb74483e"
        ),
        .target(
            name: "LyraPaymentSDKTarget",
            dependencies: [
                "LyraPaymentSDKBinary",
                .product(name: "LyraMaterial", package: "Material-test-spm")
                .product(name: "SnapKit", pacxage: "Snapkit")
            ]
        )
    ]
)
