// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "portfolio",
  dependencies: [
    // 💧 A server-side Swift web framework.
    .package(url: "https://github.com/vapor/vapor.git", .upToNextMinor(from: "3.3.0")),
    .package(url: "https://github.com/vapor/leaf.git", .upToNextMinor(from: "3.0.0"))
  ],
  targets: [
    .target(name: "App", dependencies: ["Vapor", "Leaf"]),
    .target(name: "Run", dependencies: ["App"], path: "Sources/Run")
  ]
)

