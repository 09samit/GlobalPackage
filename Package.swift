// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GlobalPackage",
    platforms: [
            .iOS(.v10),
            .macOS(.v10_10),
            .tvOS(.v12)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GlobalPackage",
            type: .static,
            targets: ["GlobalPackage"]),
    ],
    dependencies: [
            .package(url: "https://github.com/microsoft/plcrashreporter.git", from: "1.10.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GlobalPackage",
            dependencies: [
//                            .product(name: "CrashReporter", package: "plcrashreporter")
                        ],
            linkerSettings: [
                .linkedFramework("Foundation")
            ]),
        .testTarget(
            name: "GlobalPackageTests",
            dependencies: ["GlobalPackage"]),
    ]
)
