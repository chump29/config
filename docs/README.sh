#!/usr/bin/env -S bash -e

export _user=chump29
export _repo=config

echo -e "📌 Packages:\n"

_biome=$(jq -r '.dependencies."@biomejs/biome" // "❓"' ../package.json)
_biome=${_biome:1}
export _biome
echo -e " • @biomejs/biome: $_biome"

_bun=$(bun --version)
export _bun
echo -e " • Bun: $_bun"

_cspell=$(jq -r '.dependencies.cspell // "❓"' ../package.json)
_cspell=${_cspell:1}
export _cspell
echo -e " • cspell: $_cspell"

echo -e "\n🛠️  Creating README.md..."

envsubst < README.template.md > ../README.md

echo -e "\n✔️  Done!\n"
