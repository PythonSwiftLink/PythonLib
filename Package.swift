// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let framework_path = "Frameworks310"


#if os(macOS)

let package = Package(
    name: "PythonLib",
    products: [
        .library(
            name: "PythonLib",
            targets: ["PythonLib"]
        ),
    ],
    targets: [
        .target(
            name: "PythonLib",
            dependencies: ["Python"],
            linkerSettings: [
                .linkedLibrary("ncurses"),
                .linkedLibrary("ffi"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("z"),
                .linkedLibrary("panel"),
                
            ]
        ),
        .binaryTarget(
            name: "Python",
            url: "https://github.com/PythonSwiftLink/PythonAppleSupport/archive/refs/tags/3.10-macOS.b6.zip",
            checksum: "a5e256b619be86b10b93118e6a277f3a9e98dc7eaf57d3059c56fdbd074a0314"
        ),
    ]
)

#else

let package = Package(
    name: "PythonLib",
    products: [
        .library(
            name: "PythonLib",
            targets: ["PythonLib"]
        ),
    ],
    targets: [
        .target(
            name: "PythonLib",
            dependencies: ["Python"],
            linkerSettings: [
                .linkedLibrary("ncurses"),
                .linkedLibrary("ffi"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("z"),
                .linkedLibrary("panel"),
                
            ]
        ),
        .binaryTarget(
            name: "Python",
            url: "https://github.com/PythonSwiftLink/PythonAppleSupport/archive/refs/tags/3.10-iOS.b6.zip",
            checksum: "a5e256b619be86b10b93118e6a277f3a9e98dc7eaf57d3059c56fdbd074a0314"
        ),
    ]
)

#endif


