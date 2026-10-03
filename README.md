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

![Biome](https://img.shields.io/badge/Biome-^2.5.15-informational?style=plastic&logo=biome "Biome") &nbsp;
![Bun](https://img.shields.io/badge/Bun-1.4.2-informational?style=plastic&logo=bun "Bun") &nbsp;
![CSpell](https://img.shields.io/badge/CSpell-^10.3.6-informational?style=plastic&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAACfklEQVR4nOzVMUpjURxH4ZuZdFNkapvEvSSLEFyGRRBcll22kMJdiE1qQYltykfg+FC+r/4Xv+Jc7vJ8Po+fabfbHQ6HicdP+7F/iAdx4c/cA/idhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFYrHdbufecKXj8Xg6nSYe367HZhMPAmq+QhLCIiEsEsIiISwSwiIhLBLCIiEsEsIiISwSy/XfuSdc6/VzvE8+Xi3Gf4/oGy2eb+aecK3Ht/HyMfX4/t+4W7V7uOQVkxAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBaJrwAAAP//lQwX4xbXkzUAAAAASUVORK5CYII= "CSpell") &nbsp; <!-- markdownlint-disable MD013 -->
![Typescript](https://img.shields.io/badge/Typescript-^7.0.2-informational?style=plastic&logo=typescript "Typescript")

![NO AI](https://img.shields.io/badge/NO-AI-orange?style=plastic "NO AI") &nbsp;
![License](https://img.shields.io/github/license/chump29/config?style=plastic&color=blueviolet&label=%20License&logo=gplv3 "GPLv3") &nbsp;
![CVE Scan](https://img.shields.io/badge/CVE%20Scan-Pass-success?style=plastic&logo=owasp "CVE Scan")

---

### Installation

```bash
bun add --dev @postfmly/config
```

---

### Link

#### To link/refresh Visual Studio Code configs for project:

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

### Building

#### README:

```bash
./docs.sh
```

#### Package:

```bash
./build.sh
```

###### *NOTE: Includes linting and building README*

---

### Publishing

#### Publish:

```bash
./publish.sh
```

###### *NOTES:* <!-- markdownlint-disable MD0024 -->

- ###### *Includes building package*

- ###### *Increments `patch` version in `package.json`*

#### Unpublish:

```bash
# current version
npm unpublish --force

# specific version
npm unpublish @postfmly/config@[version] --force
```
