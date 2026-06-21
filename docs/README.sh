#!/usr/bin/env -S bash -e

echo -e "📌 Packages:\n"

_bun=$(bun --version)
bun pm pkg set packageManager="bun@$_bun" engines.bun="~$_bun" > /dev/null 2>&1
_bun=~$_bun
export _bun
echo -e " • Bun: $_bun"

_tsgo=$(bun info @typescript/native-preview version)
_tsgo=${_tsgo/-/--}
export _tsgo
echo -e " • @typescript/native-preview: ${_tsgo/--/-}"

_typescript=$(jq -r '.peerDependencies.typescript // "❓"' ../package.json)
export _typescript
echo -e " • typescript: $_typescript"

echo -e "\n🛠️  Creating README.md..."

envsubst < README.template.md > ../README.md

echo -e "\n✔️  Done!\n"
