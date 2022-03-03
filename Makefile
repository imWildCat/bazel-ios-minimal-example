gen-xcode-proj:
	bazel build //DemoApp:DemoAppProject --spawn_strategy=standalone
create-xcframework:
	bazel build //MixedFramework/SampleSwiftFramework
	unzip -d bazel-bin/MixedFramework/SampleSwiftFramework/ bazel-bin/MixedFramework/SampleSwiftFramework/SampleSwiftFramework.xcframework.zip
	rm -rf MixedFramework/SampleSwiftFramework.xcframework || true
	cp -r bazel-bin/MixedFramework/SampleSwiftFramework/SampleSwiftFramework.xcframework MixedFramework/SampleSwiftFramework.xcframework
