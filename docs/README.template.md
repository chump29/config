# @postfmly/config

### Configuration files for projects <!-- markdownlint-disable MD001 -->

#### Provides configuration files for:

- Biome
- TypeScript
- Visual Studio Code

---

![Biome](https://img.shields.io/badge/Biome-$_biome-informational?style=plastic&logo=biome) &nbsp;
![Bun](https://img.shields.io/badge/Bun-$_bun-informational?style=plastic&logo=bun) &nbsp;
![Typescript](https://img.shields.io/badge/Typescript-$_typescript-informational?style=plastic&logo=typescript)

![License](https://img.shields.io/github/license/chump29/config?style=plastic&color=blueviolet&label=License&logo=gplv3)

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

### Bin

#### To link Visual Studio Code configs:

```jsonc
// package.json

{
  "scripts": {
    "postinstall": "link-configs"
  }
}
```

#### To mount or verify project-specific `node_modules` locally:

```bash
bun run mount
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
