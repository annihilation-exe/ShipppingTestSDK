// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "InMobiSDK",
    platforms: [
        .iOS(.v15) // Adjust to your minimum deployment target
    ],
    products: [
        // This is the library name the client sees
        .library(
            name: "InMobiSDK",
            targets: ["InMobiSDK"]
        ),
    ],
    targets: [
        // The binary target pointing to your hosted zip
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-iOS-SDK-11.1.1.zip", // <--- YOUR HOSTED URL
            checksum: "578dd32285cc8cea05e04ef3ffd03ccf0c93bc010d1e3abbed28690fe0dfffb2"       // <--- YOUR CHECKSUM
        )
    ]
)
