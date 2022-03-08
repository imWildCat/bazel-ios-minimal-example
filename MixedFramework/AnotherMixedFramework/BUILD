load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

apple_framework(
    name = "AnotherMixedFramework",
    srcs = glob(
        [
            "src/*.swift",
            "src/*.h",
            "src/*.m",
        ],
    ),
    platforms = {"ios": "13.0"},
    visibility = ["//visibility:public"]
)
