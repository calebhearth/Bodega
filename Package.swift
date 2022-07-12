// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Bodega",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "Bodega",
            targets: ["Bodega"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", exact: Version(0, 13, 3)),
    ],
    targets: [
        .target(
            name: "Bodega",
            dependencies: [
                .productItem(name: "SQLite", package: "SQLite.swift", condition: nil)
            ]),
        .testTarget(
            name: "BodegaTests",
            dependencies: ["Bodega"]),
    ]
)
