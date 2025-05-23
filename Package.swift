// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChatBot",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ChatBotSwift",
            targets: ["ChatBotSwift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.12.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.8"),
        .package(url: "https://github.com/JanGorman/Agrume", .exact("5.8.2"))
    ],
    targets: [
        .target(
            name: "ChatBotSwift",
            dependencies: [
                .target(name: "ChatBot"), // Link the binary target
                "Kingfisher", // Add Kingfisher
                "Starscream", // Add Starscream
                "Agrume", // Add Agrume
            ],
            path: "./Sources"
        ),
        .binaryTarget(
            name: "ChatBot",
            url: "https://github.com/kevit-in/chatbot-swift/releases/download/1.0.7/ChatBot.xcframework.zip",
            checksum: "e2b5e7db1537eb3ff52c7274d9a02f23e9c19b58c2b7b7330fed0db1d9389690"
        )
    ]
)
