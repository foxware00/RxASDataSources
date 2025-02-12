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
    .package(url: "https://github.com/foxware00/Texture.git", .revision("f772e1eb61f9dbb87cf15af7904904b15bd93812")),
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
