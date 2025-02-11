// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "RxASDataSources",
  platforms: [
    .iOS(.v9), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxASDataSources", targets: ["RxASDataSources"])
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    .package(url: "https://github.com/shimastripe/Texture.git", .upToNextMajor(from: "3.1.1"))
  ],
  targets: [
    .target(name: "RxASDataSources", 
            dependencies: ["Differentiator", "RxSwift", "RxCocoa", "Texture"],
            sources: ["Sources/DataSources"]),
    .testTarget(name: "RxASDataSourcesTests", dependencies: ["RxASDataSources"])
  ],
  swiftLanguageVersions: [.v5]
)
