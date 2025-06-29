// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "RxASDataSources",
  platforms: [
    .iOS(.v14), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxASDataSources", targets: ["RxASDataSources"])
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    .package(url: "https://github.com/foxware00/Texture.git", .revision("c5cda5cb2131babf5b6faf1de96f0398d61522e2")),
    .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "5.0.0"))
  ],
  targets: [
    .target(name: "RxASDataSources",
            dependencies: [
              .product(name: "Differentiator", package: "RxDataSources"),
              .product(name: "RxSwift", package: "RxSwift"),
              .product(name: "RxCocoa", package: "RxSwift"),
              .product(name: "AsyncDisplayKit", package: "Texture")
            ]),
    .testTarget(name: "RxASDataSourcesTests", dependencies: ["RxASDataSources"])
  ],
  swiftLanguageVersions: [.v5]
)
