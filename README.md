# @postfmly/config

> - Configuration files

---

Provides configuration files for:

- Biome
- TypeScript
- VSCode

---

### Installation: <!-- markdownlint-disable MD001 -->

```bash
bun install --dev @postfmly/config
```

---

### Use:

```jsonc
// package.json

scripts: {
  "postinstall": "config-init"
}
```

```jsonc
// biome.json

{
  "extends": [
    "@postfmly/config/biome.json"
  ]
}
```

```jsonc
// tsconfig.json

{
  "extends": "./node_modules/@postfmly/config/tsconfig",
  "compilerOptions": {
    "types": [
      "[TYPES]"
    ]
  }
}
```

---

### Publishing:

#### Publish

- *NOTE: Using NPM because Bun does not include README.md in metadata for Verdaccio*

```bash
npm publish
```

#### Unpublish

```bash
npm unpublish @postfmly/config@[version] --force
```
