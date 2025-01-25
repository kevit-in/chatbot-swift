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
    targets: [
        .binaryTarget(
            name: "ChatBot",
            url: "https://github.com/kevit-in/ios-chatbot-framework/releases/download/v1.0.0/ChatBot.xcframework.zip"
        )
    ]
)
