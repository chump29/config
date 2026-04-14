# @postfmly/config

> - Configuration files

---

Provides configuration files for:

- Biome
- VSCode

---

### Installation: <!-- markdownlint-disable MD001 -->

```bash
bun install --dev @postfmly/config
```

### Using:

- Copies the `.vscode` configuration files to your project

```jsonc
// package.json

scripts: {
  "postinstall": "config-init"
}
```
---

### Publishing:

#### Publish

- ***NOTE: Using NPM because Bun does not include README.md in metadata for Verdaccio***

```bash
npm publish
```

#### Unpublish

```bash
npm unpublish @postfmly/config@[version] --force
```
