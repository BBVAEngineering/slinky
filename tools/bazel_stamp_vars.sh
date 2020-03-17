#!/usr/bin/env bash

BUILD_SCM_VERSION=$(git describe --abbrev=7 --tags HEAD 2>/dev/null || git rev-parse --short HEAD)

echo BUILD_SCM_VERSION "${BUILD_SCM_VERSION}"
