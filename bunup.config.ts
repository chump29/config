import { defineConfig } from "bunup"
import { copy } from "bunup/plugins"

import { dependencies } from "./package.json" with { type: "json" }

const additionalFiles: string[] = [
  ".vscode",
  "bin",
  "biome.json",
  "LICENSE",
  "package.json",
  "README.md",
  "tsconfig.json"
].toSorted((a: string, b: string): number => a.localeCompare(b))

const config: ReturnType<typeof defineConfig> = defineConfig({
  dts: false,
  footer: "// ♡ ᓚᘏᗢ ♡",
  minify: true,
  plugins: [copy(additionalFiles)],
  onSuccess: (): void => console.info(` 🗐  Copying ${additionalFiles.join(", ")}…`),
  unused: {
    ignore: Object.keys(dependencies),
    level: "error"
  }
})

export default config
