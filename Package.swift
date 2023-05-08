// swift-tools-version:5.5
 import PackageDescription

 let package = Package(
     name: "SwiftAI-PRLinter",
     defaultLocalization: "en",
     products: [
       .library(name: "DangerDeps", type: .dynamic, targets: ["SwiftAI-PRLinter"])
     ],
     dependencies: [
         .package(url: "https://github.com/danger/swift.git", from: "3.12.3")
     ],
     targets: [
         .target(
             name: "SwiftAI-PRLinter",
             dependencies: [
                 .product(name: "Danger", package: "swift")
             ],
             path: "SwiftAI",
             sources: ["DangerProxy.swift"]
         )
     ]
 )
