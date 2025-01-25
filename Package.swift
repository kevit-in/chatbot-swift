// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChatBot",
    products: [
        .library(
            name: "ChatBot",
            targets: ["ChatBot"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.6")
    ],
    targets: [
        .binaryTarget(
            name: "ChatBot",
            url: "https://github.com/kevit-in/ios-chatbot-framework/releases/download/1.0.0/ChatBot.xcframework.zip"
        )
    ]
)
