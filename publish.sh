#!/usr/bin/env -S bash -e

clear

npm unpublish --force

_version=$(bun --version)
bun pm pkg set packageManager="bun@$_version" engines.bun="~$_version" > /dev/null 2>&1

bun pm version patch --no-git-tag-version

bun publish
