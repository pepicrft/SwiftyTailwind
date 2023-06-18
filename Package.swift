// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyTailwind",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftyTailwind",
            targets: ["SwiftyTailwind"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-tools-support-core.git", .upToNextMinor(from: "0.5.2")),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.5.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftyTailwind",
            dependencies: [
                .product(name: "SwiftToolsSupport-auto", package: "swift-tools-support-core"),
                .product(name: "Logging", package: "swift-log")
            ]
        ),
        .testTarget(
            name: "SwiftyTailwindTests",
            dependencies: ["SwiftyTailwind", .product(name: "SwiftToolsSupport-auto", package: "swift-tools-support-core")]),
    ]
)
