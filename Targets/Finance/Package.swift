// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Finance",
    products: [
        .library(
            name: "FinanceHome",
            targets: ["FinanceHome"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "FinanceHome",
            dependencies: []
        )
    ]
)
