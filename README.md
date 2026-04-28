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
bun add --dev @postfmly/config
```

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

- NOTE: `node` is already included in `TYPES`

---

### Publishing:

#### Publish

```bash
./publish.sh
```

#### Unpublish

```bash
# current version
npm unpublish --force

# specific version
npm unpublish @postfmly/config@[version] --force
```
