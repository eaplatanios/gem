// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Graphs",
  platforms: [.macOS(.v10_13)],
  products: [
    .executable(name: "Graphs", targets: ["Graphs"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    .package(url: "https://github.com/weichsel/ZIPFoundation/", .branch("master")),
    .package(url: "https://github.com/jkandzi/Progress.swift", from: "0.4.0"),
    .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.4.0")
  ],
  targets: [
    .target(name: "Graphs", dependencies: ["Logging", "Progress", "SPMUtility", "ZIPFoundation"]),
  ]
)
