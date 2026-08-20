#!/usr/bin/env -S bash -e

echo -e "📌 Packages:\n"

_biome=$(jq -r '.peerDependencies."@biomejs/biome" // "❓"' ../package.json)
export _biome
echo -e " • @biomejs/biome: $_biome"

_bun=$(jq -r '.engines.bun // "❓"' ../package.json)
export _bun
echo -e " • Bun: $_bun"

_cspell=$(jq -r '.peerDependencies.cspell // "❓"' ../package.json)
export _cspell
echo -e " • cspell: $_cspell"

_cve=$(jq -r '.peerDependencies."cve-lite-cli" // "❓"' ../package.json)
export _cve
echo -e " • cve-lite-cli: $_cve"

_typescript=$(jq -r '.peerDependencies.typescript // "❓"' ../package.json)
export _typescript
echo -e " • typescript: $_typescript"

echo -e "\n🛠️  Creating README.md..."

envsubst < README.template.md > ../README.md

echo -e "\n✔️  Done!\n"
