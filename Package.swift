// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/ludovicroland/kmmbridge-actions-test/KMMBridget_Test/shared-kmmbridge/O.1.1/shared-kmmbridge-O.1.1.zip"
let remoteKotlinChecksum = "554de6b8e876ecef7654493376c208a4d732a7251cda60305c097c2bbee8cd69"
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