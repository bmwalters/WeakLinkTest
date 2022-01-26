// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "WeakLinkTest",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "WeakLinkTest",
            targets: ["WeakLinkTest"]
        ),
    ],
    targets: [
        .target(
            name: "WeakLinkTest",
            dependencies: []
        ),
        .testTarget(
            name: "WeakLinkTestTests",
            dependencies: ["WeakLinkTest"]
        ),
    ]
)
