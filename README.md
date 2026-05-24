# @postfmly/config

> - Configuration files

---

Provides configuration files for:

- Biome
- TypeScript
- Visual Studio Code

---

### Installation <!-- markdownlint-disable MD001 -->

```bash
bun add --dev @postfmly/config
```

#### Peer Dependencies:

- @biomejs/biome
- @types/bun
- @types/node
- globals
- typescript

### Use

#### To link Visual Studio Code configs:

```jsonc
// package.json

scripts: {
  "postinstall": "config-init"
}
```

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

### Publishing

#### Publish:

```bash
./publish.sh
```

- *NOTE: Increments `patch` version*

#### Unpublish:

```bash
# current version
npm unpublish --force

# specific version
npm unpublish @postfmly/config@[version] --force
```
