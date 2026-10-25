// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "libprisma",
    targets: [
        .target(
            name: "libprisma",
            path: "libprisma",
            sources: [
                "Highlight.cpp",
                "LanguageTree.cpp",
                "SyntaxHighlighter.cpp",
                "TokenList.cpp"
            ],
            resources: [
                .copy("grammars.dat")
            ],
            publicHeadersPath: ".",
            cxxSettings: [
                .headerSearchPath("../regex/include"),
                .define("BOOST_REGEX_STANDALONE")
            ]
        ),
    ],
    cxxLanguageStandard: .cxx20
)
