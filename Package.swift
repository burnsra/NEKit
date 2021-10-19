// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NEKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NEKit",
            targets: ["NEKit-macOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.0.0"),
        .package(url: "https://github.com/zhuhaow/tun2socks", from: "0.8.0"),
        .package(url: "https://github.com/burnsra/Resolver", from: "0.3.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NEKit-macOS",
            dependencies: []),
        .testTarget(
            name: "NEKitTests",
            dependencies: ["NEKit"]),
    ]
)
