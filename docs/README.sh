#!/usr/bin/env -S bash -e

echo -e "📌 Packages:\n"

_bun=$(bun --version)
bun pm pkg set packageManager="bun@$_bun" engines.bun="~$_bun" > /dev/null 2>&1
_bun=~$_bun
export _bun
echo -e " • Bun: $_bun"

echo -e "\n🛠️  Creating README.md..."

envsubst < README.template.md > ../README.md

echo -e "\n✔️  Done!\n"
