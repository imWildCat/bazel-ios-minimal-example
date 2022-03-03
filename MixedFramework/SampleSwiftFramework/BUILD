load("@build_bazel_rules_apple//apple:apple.bzl", "apple_xcframework")
load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)

TARGETS_UNDER_TEST_TAGS = [
    "manual",
    "notap",
]

swift_library(
    name = "swift_fmwk_lib",
    srcs = glob(["*.swift"]),
    generates_header = True,
    module_name = "SampleSwiftFramework",
    visibility = ["//visibility:public"],
    alwayslink = True,
)

apple_xcframework(
    name = "SampleSwiftFramework",
    bundle_id = "com.ms.example",
    framework_type = ["dynamic"],
    infoplists = [
        "//MixedFramework/SampleSwiftFramework:Info.plist",
    ],
    ios = {
        "simulator": [
            "arm64",
            "x86_64",
        ],
        "device": [
            "arm64",
        ],
    },
    minimum_os_versions = {
        "ios": "10.0",
    },
    tags = TARGETS_UNDER_TEST_TAGS,
    deps = [":swift_fmwk_lib"],
)
