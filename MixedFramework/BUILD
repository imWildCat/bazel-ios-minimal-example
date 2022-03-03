load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "apple_dynamic_framework_import",
    "apple_dynamic_xcframework_import",
)
load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

apple_dynamic_xcframework_import(
    name = "SampleSwiftFramework_2",
    library_identifiers = {
        "ios_device": "ios-arm64",
        "ios_simulator": "ios-arm64_x86_64-simulator",
    },
    visibility = ["//visibility:public"],
    xcframework_imports = glob(["SampleSwiftFramework.xcframework/**"]),
)

apple_dynamic_framework_import(
    name = "SampleSwiftFramework",
    framework_imports = glob(["SampleSwiftFramework.xcframework/ios-arm64_x86_64-simulator/SampleSwiftFramework.framework/**"]),
    visibility = ["//visibility:public"],
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

objc_library(
    name = "MixedFrameworkObjc",
    module_name="MixedFrameworkObjc",
    srcs = glob(
        [
            "src/*.h",
            "src/*.m",
        ],
    ),
    hdrs = glob(
        [
            "src/*.h",
        ],
    ),
    copts = [
        "-I$(BINDIR)/MixedFramework",
        # "-fmodule-map-file=$(GENDIR)/../../../MixedFramework/SampleSwiftFramework.xcframework/ios-arm64_x86_64-simulator/SampleSwiftFramework.framework/Modules/module.modulemap",
        "-fmodule-map-file=/Users/dachon/Downloads/202203/temp/bazel-ios-minimal-example/MixedFramework/SampleSwiftFramework.xcframework/ios-arm64_x86_64-simulator/SampleSwiftFramework.framework/Modules/module.modulemap",
        ## bazel-out/applebin_ios-ios_x86_64-fastbuild-ST-f35b32a85dd9/bin/MixedFramework
    ],
    enable_modules = True,
    # includes = ["../../../../MixedFramework/SampleSwiftFramework.xcframework/ios-arm64_x86_64-simulator/SampleSwiftFramework.framework"],
    # linkopts = [
    #     "-FMixedFramework/SampleSwiftFramework.xcframework/ios-arm64_x86_64-simulator",
    # ],
    visibility = ["//visibility:public"],
    deps = [
        "//MixedFramework:SampleSwiftFramework",
        # "//MixedFramework/SampleSwiftFramework:swift_fmwk_lib",
    ],
)
