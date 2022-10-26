// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let framework_path = "Frameworks310"

let package = Package(
    name: "PythonLib",
    products: [
        .library(
            name: "PythonLib",
            targets: ["PythonLib"]
        ),
    ],
    //    dependencies: [
    //        .package(url: "https://github.com/beeware/Python-Apple-support/releases/download/3.10-b6/Python-3.10-macOS-support.b6.tar.gz", from: "")
    //    ],
    targets: [
        //        .target(
        //            name: "PythonSupport",
        //            dependencies: ["PythonLib"]
        //               ),
        //
        .target(
            name: "PythonLib",
            //            dependencies: ["Python","BZip2","OpenSSL","XZ"],
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
        
        //        .binaryTarget(
        //            name: "Python",
        //            path: "\(framework_path)/Python.xcframework"
        //        ),
        //        .binaryTarget(
        //            name: "BZip2",
        //            path: "\(framework_path)/BZip2.xcframework"
        //        ),
        //        .binaryTarget(
        //            name: "OpenSSL",
        //            path: "\(framework_path)/OpenSSL.xcframework"
        //        ),
        //        .binaryTarget(
        //            name: "XZ",
        //            path: "\(framework_path)/XZ.xcframework"
        //        ),
        
    ]
)
