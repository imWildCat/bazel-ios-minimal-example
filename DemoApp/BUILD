load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)
load("@xchammer//:BazelExtensions/xcodeproject.bzl", "xcode_project")

swift_library(
    name = "DemoAppLibrary",
    srcs = glob(["**/*.swift"]),
    module_name = "DemoAppLibrary",
    visibility = ["//visibility:public"],
    deps = [],
)

ios_application(
    name = "DemoApp",
    bundle_id = "com.example.DemoApp",
    families = [
        "iphone",
        "ipad",
    ],
    frameworks = [],
    infoplists = ["Info.plist"],
    minimum_os_version = "14.0",
    visibility = ["//visibility:public"],
    deps = [
        ":DemoAppLibrary",
    ],
)

# BUILD.Bazel
xcode_project(
    name = "DemoAppProject",
    targets = ["//DemoApp:DemoApp"],
)
