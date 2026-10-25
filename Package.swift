// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "libprisma",
    products: [
        .library(
            name: "libprisma",
            targets: ["libprisma"]
        ),
    ],
    targets: [
        .target(
            name: "libprisma",
            path: "libprisma",
            sources: [
                "Highlight.cpp",
                "LanguageTree.cpp",
                "Syntaxer.mm",
                "SyntaxHighlighter.cpp",
                "TokenList.cpp"
            ],
            resources: [
                .copy("grammars.dat")
            ],
            cxxSettings: [
                .headerSearchPath("../regex/include"),
                .define("BOOST_REGEX_STANDALONE")
            ]
        ),
    ],
    cxxLanguageStandard: .cxx20
)
