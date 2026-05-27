#!/usr/bin/env -S bash -e

clear

bun run lint
echo
./docs.sh

_version=$(bun --version)
bun pm pkg set packageManager="bun@$_version" engines.bun="~$_version" > /dev/null 2>&1

bun pm version patch --no-git-tag-version

npm unpublish --force

# ! NOTE: Using npm because Bun doesn't package correct files
#bun publish
npm publish
