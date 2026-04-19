# @postfmly/config

> - Configuration files

---

Provides configuration files for:

- Biome
- TypeScript
- VSCode

---

![Biome](https://img.shields.io/badge/Biome-^2.4.12-informational?style=plastic&logo=biome) &nbsp;
![Bun](https://img.shields.io/badge/Bun-~1.3.12-informational?style=plastic&logo=bun)

---

### Installation: <!-- markdownlint-disable MD001 -->

```bash
bun install --dev @postfmly/config
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

---

### Publishing:

#### Publish

```bash
./publish.sh
```

#### Unpublish

```bash
npm unpublish @postfmly/config@[version] --force
```
