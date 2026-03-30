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
            url: "https://supply.inmobicdn.net/sdk/iOS/build/InMobi-iOS-SDK-11.2.0-20260330.065058-2-spm.zip", // <--- YOUR HOSTED URL
            checksum: "9a9054879dd65659530bcc640bb613fe0d87c41e891a2d1c48eab7489cc3087d"       // <--- YOUR CHECKSUM
        )
    ]
)
