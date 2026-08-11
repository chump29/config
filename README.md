# @postfmly/config

### Configuration files for projects <!-- markdownlint-disable MD001 -->

#### Provides configuration files for:

- Biome
- CSpell
- TSGo/TypeScript
- Visual Studio Code

---

<!-- cspell:disable -->
![Biome](https://img.shields.io/badge/Biome-^2.5.8-informational?style=plastic&logo=biome "Biome") &nbsp;
![Bun](https://img.shields.io/badge/Bun-~1.3.14-informational?style=plastic&logo=bun "Bun") &nbsp;
![CSpell](https://img.shields.io/badge/CSpell-^10.0.1-informational?style=plastic&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAACfklEQVR4nOzVMUpjURxH4ZuZdFNkapvEvSSLEFyGRRBcll22kMJdiE1qQYltykfg+FC+r/4Xv+Jc7vJ8Po+fabfbHQ6HicdP+7F/iAdx4c/cA/idhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFQlgkhEVCWCSERUJYJIRFYrHdbufecKXj8Xg6nSYe367HZhMPAmq+QhLCIiEsEsIiISwSwiIhLBLCIiEsEsIiISwSy/XfuSdc6/VzvE8+Xi3Gf4/oGy2eb+aecK3Ht/HyMfX4/t+4W7V7uOQVkxAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBYJYZEQFglhkRAWCWGREBaJrwAAAP//lQwX4xbXkzUAAAAASUVORK5CYII= "CSpell") &nbsp; <!-- markdownlint-disable MD013 -->
![CVE Lite](https://img.shields.io/badge/CVE%20Lite-^1.29.0-informational?style=plastic&logo=owasp "CVE Lite") &nbsp;
![Typescript](https://img.shields.io/badge/Typescript-^7.0.2-informational?style=plastic&logo=typescript "Typescript")

![License](https://img.shields.io/github/license/chump29/config?style=plastic&color=blueviolet&label=%20License&logo=gplv3 "GPLv3") &nbsp;
![CVE Scan](https://img.shields.io/badge/CVE%20Scan-Pass-success?style=plastic&logo=owasp "CVE Scan")
<!-- cspell:enable -->

---

### Installation

```bash
bun add --dev @postfmly/config
```

#### Peer Dependencies<sup>1</sup>:

- @biomejs/biome
- @types/bun
- @types/node
- cspell
- cve-lite-cli
- globals
- typescript

###### <sup>1</sup> [Automatically](https://bun.com/docs/pm/cli/install#peer-dependencies "Bun documentation") installed by Bun

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
      "bun",
      "node" // if using any node: package
    ]
  }
}
```

#### To run CVE Lite scanner:

```jsonc
// package.json

{
  "scripts": {
    "scan": "bun run --bun cve-lite"
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
