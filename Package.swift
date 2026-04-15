// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AdMixerMediationUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdMixerMediationUnityAds",
            targets: ["iOS_SSP_UnityAds_SPM"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Nasmedia-Tech/iOS-SSP-Mediation-SPM.git",
            from: "2.3.0"
        )
    ],
    targets: [
        .target(
            name: "iOS_SSP_UnityAds_SPM",
            dependencies: [
                "AdMixerMediationUnityAdsBinary",
                "UnityAds",
                .product(name: "AdMixerMediation",
                         package: "ios-ssp-mediation-spm")
            ],
            path: "Sources/iOS-SSP-UnityAds-SPM"
        ),
        .binaryTarget(
            name: "AdMixerMediationUnityAdsBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-AdMixerDownload/raw/main/AdMixerMediationUnityAds1.0.5.xcframework.zip",
            checksum: "d7ac20826721c9d8fcd1a81808560bdf6e687b92c2e4bcfda0d1d2d6251617d0"
        ),
        .binaryTarget(
            name: "UnityAds",
            url:
                "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.4/UnityAds.zip",
            checksum: "ddc08bb10f636d51c3fe3d73a38c937ea4b0e13c177dd661ad6826f1e72e8e69"
        )
    ]
)
