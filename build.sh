#!/usr/bin/env -S bash -e

bun run scan
bun run lint
echo
./docs.sh
