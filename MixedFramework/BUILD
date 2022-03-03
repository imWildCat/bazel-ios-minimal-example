load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "apple_dynamic_xcframework_import",
)
load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

apple_dynamic_xcframework_import(
    name = "SampleSwiftFramework",
    library_identifiers = {
        "ios_device": "ios-arm64",
        "ios_simulator": "ios-arm64_x86_64-simulator",
    },
    visibility = ["//visibility:public"],
    xcframework_imports = glob(["SampleSwiftFramework.xcframework/**"]),
)

apple_framework(
    name = "MixedFramework",
    srcs = glob(
        [
            "src/*.swift",
            "src/*.h",
            "src/*.m",
        ],
    ),
    platforms = {"ios": "13.0"},
    visibility = ["//visibility:public"],
    deps = [
        "//MixedFramework:SampleSwiftFramework",
    ],
)
