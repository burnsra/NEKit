// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NEKit",
    platforms: [
        .macOS(.v11)
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
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack", from: "3.8.0"),
        .package(url: "https://github.com/zhuhaow/Resolver", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "NEKit",
            dependencies: [
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
                .product(name: "CocoaLumberjackSwift", package: "CocoaLumberjack"),
                .product(name: "CocoaLumberjackSwiftLogBackend", package: "CocoaLumberjack"),
                .product(name: "tun2socks", package: "tun2socks"),
                .product(name: "Resolver", package: "Resolver")
            ],
            path: "src"
        ),
    ]
)
