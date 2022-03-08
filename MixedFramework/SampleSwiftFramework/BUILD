load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

apple_framework(
    name = "SampleSwiftFramework",
    srcs = glob(
        [
            "*.swift",
            "*.h",
            "*.m",
        ],
    ),
    platforms = {"ios": "13.0"},
    visibility = ["//visibility:public"],
    deps = ["//MixedFramework/AnotherMixedFramework"],
)
