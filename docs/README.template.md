# @postfmly/config

### Configuration files for projects <!-- markdownlint-disable MD001 -->

#### Provides configuration files for:

- Biome
- CSpell
- TypeScript
- Visual Studio Code
  - Extensions
  - Settings

---

![Biome](https://img.shields.io/badge/Biome-$_biome-informational?style=plastic&logo=biome "Biome") &nbsp;
![Bun](https://img.shields.io/badge/Bun-$_bun-informational?style=plastic&logo=bun "Bun") &nbsp;
![CSpell](https://img.shields.io/badge/CSpell-$_cspell-informational?style=plastic&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAACfklEQVR4nOzVMUpjURxH4ZuZdFNkapvEvSSLEFyGRRBcll22kMJdiE1qQYltykfg+FC+r/4Xv+Jc7vJ8Po+fabfbHQ6HicdP+7F/iAdx4c/cA/idhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFYrHdbufecKXj8Xg6nSYe367HZhMPAmq+QhLCIiEsEsIiISwSwiIhLBLCIiEsEsIiISwSy/XfuSdc6/VzvE8+Xi3Gf4/oGy2eb+aecK3Ht/HyMfX4/t+4W7V7uOQVkxAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBaJrwAAAP//lQwX4xbXkzUAAAAASUVORK5CYII= "CSpell") &nbsp; <!-- markdownlint-disable MD013 -->
![Typescript](https://img.shields.io/badge/Typescript-$_typescript-informational?style=plastic&logo=typescript "Typescript")

![NO AI](https://img.shields.io/badge/NO-AI-orange?style=plastic "NO AI") &nbsp;
![License](https://img.shields.io/github/license/$_user/$_repo?style=plastic&color=blueviolet&label=%20License&logo=gplv3 "GPLv3") &nbsp;
![CVE Scan](https://img.shields.io/badge/CVE%20Scan-Pass-success?style=plastic&logo=owasp "CVE Scan")

---

### Installation

```bash
bun add --dev @postfmly/config
```

---

### Link

#### To link/refresh Visual Studio Code configs to project (after updates):

###### *NOTES:*

- ###### *Run after initial install*

- ###### *Run after package update*

```bash
bun run link-configs
```

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
      "bun", // if using any bun package(s)
      "node" // if using any node: package(s)
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

###### *NOTES:* <!-- markdownlint-disable MD0024 -->

- ###### *Increments `patch` version in `package.json`*

- ###### *Includes linting and building README*

#### Unpublish:

```bash
# current version
npm unpublish --force

# specific version
npm unpublish @postfmly/config@[version] --force
```
