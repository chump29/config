# @postfmly/config

> - Configuration files

---

Provides configuration files for:

- Biome
- TypeScript
- VSCode

---

### Installation <!-- markdownlint-disable MD001 -->

```bash
bun add --dev @postfmly/config
```

#### Peer Dependencies:

- @biomejs/biome
- @types/bun
- @types/node
- typescript

### Use

```jsonc
// package.json

scripts: {
  "postinstall": "config-init"
}
```

```jsonc
// biome.json

{
  "$schema": "https://biomejs.dev/schemas/latest/schema.json",
  "extends": [
    "@postfmly/config/biome.json"
  ],
  "files": {
    "includes": [
      "!!.vscode",
      "!!tsconfig.json"
    ]
  }
}
```

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
