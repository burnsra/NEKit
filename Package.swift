// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NEKit",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "NEKit",
            targets: ["NEKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.5"),
        .package(url: "https://github.com/zhuhaow/tun2socks.git", from: "0.8.0"),
        .package(url: "https://github.com/zhuhaow/Resolver", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "NEKit",
            dependencies: [
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket"),
                .product(name: "tun2socks", package: "tun2socks"),
                .product(name: "Resolver", package: "Resolver"),
            ],
            path: "src"
        ),
    ]
)
