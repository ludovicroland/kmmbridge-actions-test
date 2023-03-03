// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/ludovicroland/kmmbridge-actions-test/KMMBridget_Test/shared-kmmbridge/O.1.2/shared-kmmbridge-O.1.2.zip"
let remoteKotlinChecksum = "e19287523b0221c0aa4c9b81c14f6ee3c9adb5e255709c37681ce0f93b4bf7d2"
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