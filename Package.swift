// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "todo"
let remoteKotlinChecksum = "todo"
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