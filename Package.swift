// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PorterStemmer2",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PorterStemmer2",
            targets: ["libstemmer", "PorterStemmer2"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "libstemmer", 
                dependencies: [],
                path: "./PorterStemmer2/Classes/Stemmer/"),

        .target(
             name: "PorterStemmer2",
             dependencies: [],
             path: "./PorterStemmer2/Classes/Swift"),
        
        //.testTarget(
        //    name: "PorterStemmer2Tests",
        //    dependencies: ["PorterStemmer2"]),
    ]
)