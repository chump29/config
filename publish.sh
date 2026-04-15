#!/usr/bin/env -S bash -e

npm version --no-git-tag-version patch

# ! NOTE: Using NPM because Bun does not include README.md in metadata for Verdaccio
npm publish
