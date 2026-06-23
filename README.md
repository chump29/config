# @postfmly/config

### Configuration files for projects <!-- markdownlint-disable MD001 -->

#### Provides configuration files for:

- Biome
- TSGo/TypeScript
- Visual Studio Code

---

![Biome](https://img.shields.io/badge/Biome-^2.5.1-informational?style=plastic&logo=biome "Biome") &nbsp;
![Bun](https://img.shields.io/badge/Bun-~1.3.14-informational?style=plastic&logo=bun "Bun") &nbsp;
![TSGo](https://img.shields.io/badge/TSGo-7.0.0--dev.20260623.1-informational?style=plastic&logo=typescript "TSGo") &nbsp;
![Typescript](https://img.shields.io/badge/Typescript-^6.0.3-informational?style=plastic&logo=typescript "Typescript")

![License](https://img.shields.io/github/license/chump29/config?style=plastic&color=blueviolet&label=License&logo=gplv3 "GPLv3")

---

### Installation

```bash
bun add --dev @postfmly/config
```

#### Peer Dependencies<sup>1</sup>:

- @biomejs/biome
- @types/bun
- @types/node
- @typescript/native-preview<sup>2,3,4</sup> *(TSGo)*
- globals
- typescript<sup>4</sup>

###### <sup>1</sup> [Automatically](https://bun.com/docs/pm/cli/install#peer-dependencies "Bun documentation") installed by Bun

###### <sup>2</sup> Experimental

###### <sup>3</sup> Use with Visual Studio Code [TypeScript (Native Preview)](https://marketplace.visualstudio.com/items?itemName=TypeScriptTeam.native-preview "TypeScript (Native Preview)") extension

###### <sup>4</sup> Both installed for backwards compatibility

---

### Link

#### To link Visual Studio Code configs to project:

```bash
bun run link-configs
```

---

### Task

#### Runs on `folderOpen`

###### *NOTES:*

- ###### *Mounts `node_modules` for frontend*

- ###### *Mounts `.venv` for backend*

---

### Use

#### To import Biome config:

```jsonc
// biome.json

{
  "extends": [
    "@postfmly/config/biome.json"
  ]
}
```

#### To import TSGo/Typescript config:

```jsonc
// tsconfig.json

{
  "extends": "./node_modules/@postfmly/config/tsconfig.json",
  "compilerOptions": {
    "types": [
      "bun",
      "node" // if using node: package(s)
    ]
  }
}
```

---

### Linting

```bash
bun run lint
```

---

### README

```bash
./docs.sh
```

---

### Publishing

#### Publish:

```bash
./publish.sh
```

###### *NOTES:*

- ###### *Increments `patch` version in `package.json`*

- ###### *Includes linting and building README*

#### Unpublish:

```bash
# current version
npm unpublish --force

# specific version
npm unpublish @postfmly/config@[version] --force
```
