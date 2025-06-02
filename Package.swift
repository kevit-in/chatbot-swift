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
            url: "https://github.com/kevit-in/chatbot-swift/releases/download/1.0.9/ChatBot.xcframework.zip",
            checksum: "ec7e231be7bda7c4763297f83a34f80f67d2167af94d24079175bfafc1996b62"
        )
    ]
)
