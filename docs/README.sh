#!/usr/bin/env -S bash -e

if [ ! -d ../node_modules ]; then
  echo -e "🛠️ Installing packages\n"
  bun install
  echo
fi

echo -e "📌 Packages:\n"

_biome=$(jq -r '.peerDependencies."@biomejs/biome"' ../package.json)
export _biome
echo -e " • @biomejs/biome: $_biome"

_version=$(bun --version)
bun pm pkg set packageManager="bun@$_version" engines.bun="~$_version" > /dev/null 2>&1
_bun=$(jq -r .engines.bun ../package.json)
export _bun
echo -e " • Bun: $_bun"

_typescript=$(jq -r '.peerDependencies.typescript' ../package.json)
export _typescript
echo -e " • typescript: $_typescript"

echo -e "\n🛠️  Creating README.md..."

envsubst < README.template.md > ../README.md

echo -e "\n✔️  Done!\n"
