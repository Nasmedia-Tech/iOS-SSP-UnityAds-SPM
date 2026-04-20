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
            url: "https://github.com/Nasmedia-Tech/iOS-AdMixerDownload/raw/main/AdMixerMediationUnityAds1.0.6.xcframework.zip",
            checksum: "248e81c4ace22f94e0d5012e44d6373e450554be0fd30369b125ebf9ff11e843"
        ),
        .binaryTarget(
            name: "UnityAds",
            url:
                "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.16.4/UnityAds.zip",
            checksum: "ddc08bb10f636d51c3fe3d73a38c937ea4b0e13c177dd661ad6826f1e72e8e69"
        )
    ]
)
