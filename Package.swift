// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SegmentBugsnag",
    platforms: [
        .macOS("10.15"),
        .iOS("13.0"),
        .tvOS("11.0"),
        .watchOS("7.1")
    ],
    products: [
        .library(
            name: "SegmentBugsnag",
            targets: ["SegmentBugsnag"]),
    ],
    dependencies: [
        .package(
            name: "Segment",
            url: "https://github.com/segmentio/analytics-swift.git",
            from: "1.5.2"
        ),
        .package(
            name: "Bugsnag",
            url: "https://github.com/bugsnag/bugsnag-cocoa",
            from: "6.28.0"
        )
    ],
    targets: [
        .target(
            name: "SegmentBugsnag",
            dependencies: ["Segment", .product(
                name: "Bugsnag",
                package: "Bugsnag")])
    ]
)

