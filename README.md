# @postfmly/config

### Configuration files for projects <!-- markdownlint-disable MD001 -->

#### Provides configuration files for:

- Biome
- TypeScript
- Visual Studio Code

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
      "node"
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

#### To mount project-specific `node_modules` locally:

```bash
bun run mount-node-modules
```

###### *NOTE: Called from `.vscode/tasks.json`*

---

### Publishing

#### Publish:

```bash
./publish.sh
```

###### *NOTE: Increments `patch` version*

#### Unpublish:

```bash
# current version
npm unpublish --force

# specific version
npm unpublish @postfmly/config@[version] --force
```
