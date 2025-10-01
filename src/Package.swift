// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "App",
    products: [
        .library(
            name: "App",
            type: .dynamic,
            targets: ["App"],
        )
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot", branch: "main")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["SwiftGodot"]
        )
    ]
)
