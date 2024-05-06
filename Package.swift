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
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.14.2"),
        
        .package(
            url: "https://github.com/facebook/facebook-ios-sdk.git", from: "17.0.0"),
        
        .package(
            url: "https://github.com/airbnb/lottie-ios", from: "4.4.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LOADER",
            dependencies: [
                
                .target(name: "LOADER13"),
        
                    .target(name: "OneSignalFramework"),
                    .target(name: "OneSignalNotifications"),
                    .target(name: "OneSignalUser"),
                    .target(name: "OneSignalOutcomes"),
                    .target(name: "OneSignalCore"),
                    
                    .target(name: "OneSignalExtension"),
                    .target(name: "OneSignalInAppMessages"),
                    .target(name: "OneSignalOSCore"),
                    .target(name: "OneSignalLocation"),
                
                .product(name: "AppsFlyerLib", package: "AppsFlyerFramework"),
              
                .product(name: "Lottie", package: "lottie-ios"),
                
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                .product(name: "FacebookAEM", package: "facebook-ios-sdk"),
                .product(name: "FacebookBasics", package: "facebook-ios-sdk"),
            ]
        ),
        
        
            .binaryTarget(
                        name: "OneSignalCore",
                        path: "./Sources/OneSignalCore.xcframework"),
                    
                    .binaryTarget(
                        name: "OneSignalFramework",
                        path: "./Sources/OneSignalFramework.xcframework"),
                    
                    .binaryTarget(
                            name: "OneSignalNotifications",
                            path: "./Sources/OneSignalNotifications.xcframework"),
                    
                    .binaryTarget(
                        name: "OneSignalUser",
                        path: "./Sources/OneSignalUser.xcframework"),
                    
                    .binaryTarget(
                        name: "OneSignalOutcomes",
                        path: "./Sources/OneSignalOutcomes.xcframework"),
                    
                    .binaryTarget(
                                name: "OneSignalExtension",
                                path: "./Sources/OneSignalExtension.xcframework"),
                        
                    .binaryTarget(
                            name: "OneSignalInAppMessages",
                            path: "./Sources/OneSignalInAppMessages.xcframework"),
                        
                    .binaryTarget(
                            name: "OneSignalOSCore",
                            path: "./Sources/OneSignalOSCore.xcframework"),
                    
                    .binaryTarget(
                            name: "OneSignalLocation",
                            path: "./Sources/OneSignalLocation.xcframework"),
                        
        
        .binaryTarget(
            name: "LOADER13",
            path: "./Sources/LOADER13.xcframework"),

    ],
    swiftLanguageVersions: [.v5]
)
