// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "reyesxyz",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMinor(from: "3.1.0")),
        .package(url: "https://github.com/vapor/fluent-mysql.git", .upToNextMinor(from: "3.0.0")),
        .package(url: "https://github.com/vapor/leaf.git", .upToNextMinor(from: "3.0.0")),
        .package(url: "https://github.com/crossroadlabs/Markdown.git", .upToNextMinor(from: "1.0.0-alpha.2")),
        .package(url: "https://github.com/twostraws/SwiftSlug.git", .upToNextMinor(from: "0.2.0"))
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "Leaf", "FluentMySQL", "Markdown", "SwiftSlug"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)

