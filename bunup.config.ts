import { defineConfig } from "bunup"
import { copy } from "bunup/plugins"

const config: ReturnType<typeof defineConfig> = defineConfig({
  clean: false,
  dts: false,
  footer: "// ♡ ᓚᘏᗢ ♡",
  minify: true,
  plugins: [copy([".vscode", "bin", "biome.json", "LICENSE", "package.json", "README.md", "tsconfig.json"])],
  unused: {
    ignore: ["@biomejs/biome", "@types/bun", "@types/node", "cspell", "globals", "typescript"],
    level: "error"
  }
})

export default config
