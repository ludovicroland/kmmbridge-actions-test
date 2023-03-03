// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/ludovicroland/kmmbridge-actions-test/KMMBridget_Test/shared-kmmbridge/unspecified.1/shared-kmmbridge-unspecified.1.zip"
let remoteKotlinChecksum = "ff5e3b80bae1506ba65ef9647089ea044033ec019fee6edf7cdb8e1974f112de"
let packageName = "TEST_KMM_IOS"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)