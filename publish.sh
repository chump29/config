#!/usr/bin/env -S bash -e

clear

npm unpublish --force

_version=$(bun --version)
bun pm pkg set packageManager="bun@$_version"
bun pm pkg set engines.bun="~$_version"

bun pm version patch --no-git-tag-version

bun publish
