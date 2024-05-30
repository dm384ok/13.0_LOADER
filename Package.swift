// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LOADER",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LOADER",
            targets: ["LOADER"]),
    ],

    dependencies: [
        .package(
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", exact: "6.14.2"),
        
        .package(
            url: "https://github.com/facebook/facebook-ios-sdk.git", exact: "17.0.0"),
        
        .package(
            url: "https://github.com/airbnb/lottie-ios", exact: "4.4.3"),
        
        .package(
                        url: "https://github.com/OneSignal/OneSignal-iOS-SDK",   from: "5.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LOADER",
            dependencies: [
                
                .target(name: "LOADER13"),
        
                    .product(name: "OneSignalFramework", package: "OneSignal-iOS-SDK"),
                                  .product(name: "OneSignalInAppMessages", package: "OneSignal-iOS-SDK"),
                                  .product(name: "OneSignalLocation", package: "OneSignal-iOS-SDK"),
                                  .product(name: "OneSignalExtension", package: "OneSignal-iOS-SDK"),

                
                .product(name: "AppsFlyerLib", package: "AppsFlyerFramework"),
              
                .product(name: "Lottie", package: "lottie-ios"),
                
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                .product(name: "FacebookAEM", package: "facebook-ios-sdk"),
                .product(name: "FacebookBasics", package: "facebook-ios-sdk"),
            ]
        ),
        
        .binaryTarget(
            name: "LOADER13",
            path: "./Sources/LOADER13.xcframework"),

    ],
    swiftLanguageVersions: [.v5]
)
