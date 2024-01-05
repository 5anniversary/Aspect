// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Aspect",
    products: [
        .library(
            name: "Aspect",
            targets: ["Aspect"])
    ],
    targets: [
        .target(
            name: "Aspect",
            path: "Aspect",
            exclude: ["Objc"], // Objective-C 파일을 제외합니다.
            sources: ["."], // Swift 파일만 포함합니다.
            publicHeadersPath: "Objc" // Objective-C 헤더의 경로를 명시합니다.
        )
    ],
    swiftLanguageVersions: [.v5]
)
