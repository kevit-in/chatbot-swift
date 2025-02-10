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
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.8")
    ],
    targets: [
        .target(
            name: "ChatBotSwift",
            dependencies: [
                .target(name: "ChatBot"), // Link the binary target
                "Kingfisher", // Add Kingfisher
                "Starscream", // Add Starscream
            ],
            path: "./Sources"
        ),
        .binaryTarget(
            name: "ChatBot",
            url: "https://github.com/kevit-in/chatbot-swift/releases/download/1.0.3/ChatBot.xcframework.zip",
            checksum: "4d52c0f65423a5d1269172dec10a2cd395d71b03574947c5eaeb5a9f16c54894"
        )
    ]
)
