# @postfmly/config

### Configuration files for projects <!-- markdownlint-disable MD001 -->

#### Provides configuration files for:

- Biome
- TypeScript
- Visual Studio Code

---

![Biome](https://img.shields.io/badge/Biome-^2.5.0-informational?style=plastic&logo=biome "Biome") &nbsp;
![Bun](https://img.shields.io/badge/Bun-~1.3.14-informational?style=plastic&logo=bun "Bun") &nbsp;
![Typescript](https://img.shields.io/badge/Typescript-^6.0.3-informational?style=plastic&logo=typescript "Typescript")

![License](https://img.shields.io/github/license/chump29/config?style=plastic&color=blueviolet&label=License&logo=gplv3 "GPLv3")

---

### Installation

```bash
bun add --dev @postfmly/config
```

#### Peer Dependencies:

- @biomejs/biome
- @types/bun
- @types/node
- globals
- typescript

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

#### To import Typescript config:

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
