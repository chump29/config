import { defineConfig } from "bunup"
import { copy } from "bunup/plugins"

const additionalFiles: string[] = [
  ".vscode",
  "bin",
  "biome.json",
  "LICENSE",
  "package.json",
  "README.md",
  "tsconfig.json"
]

const config: ReturnType<typeof defineConfig> = defineConfig({
  clean: false,
  dts: false,
  footer: "// ♡ ᓚᘏᗢ ♡",
  minify: true,
  plugins: [copy(additionalFiles)],
  onSuccess: (): void => console.info(` 🗐  Copying ${additionalFiles.join(", ")}...`),
  unused: {
    ignore: ["@biomejs/biome", "@types/bun", "@types/node", "cspell", "globals"],
    level: "error"
  }
})

export default config
