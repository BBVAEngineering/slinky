workspace(
    name = "slinky",
    managed_directories = {
        "@npm": ["packages/web/node_modules"]
    },
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "2eca5b934dee47b5ff304f502ae187c40ec4e33e12bcbce872a2eeb786e23269",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/1.4.1/rules_nodejs-1.4.1.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "check_rules_nodejs_version", "node_repositories", "yarn_install")

node_repositories(
    package_json = ["//packages/web:package.json"],
)

yarn_install(
    name = "npm",
    package_json = "//packages/web:package.json",
    yarn_lock = "//packages/web:yarn.lock",
)

load("@npm//:install_bazel_dependencies.bzl", "install_bazel_dependencies")
install_bazel_dependencies()
