gen-xcode-proj:
	bazel build //DemoApp:DemoAppProject --spawn_strategy=standalone
