// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/ludovicroland/kmmbridge-actions-test/KMMBridget_Test/shared-kmmbridge/O.1.3/shared-kmmbridge-O.1.3.zip"
let remoteKotlinChecksum = "798a53ca5a3ee02eb72f65ea050119085aed9ef68f0495f2036244a31f57a131"
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