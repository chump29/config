# @postfmly/config

> - Configuration files

---

Provides configuration files for:

- Biome
- TypeScript
- VSCode

---

![Biome](https://img.shields.io/badge/Biome-~2-informational?style=plastic&logo=biome) &nbsp;
![Bun](https://img.shields.io/badge/Bun-~1.3-informational?style=plastic&logo=bun) &nbsp;
![Node](https://img.shields.io/badge/Node.js-~24-informational?style=plastic&logo=nodedotjs)

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

#### Increment version

```bash
npm version --no-git-tag-version [type]
```

#### Publish

- *NOTE: Using NPM because Bun does not include README.md in metadata for Verdaccio*

```bash
npm publish
```

#### Unpublish

```bash
npm unpublish @postfmly/config@[version] --force
```
