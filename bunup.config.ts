import { defineConfig } from "bunup"
import { copy } from "bunup/plugins"

import { dependencies } from "./package.json" with { type: "json" }

const additionalFiles = [
  ".vscode",
  "bin",
  "biome.json",
  "LICENSE",
  "package.json",
  "README.md",
  "tsconfig.json"
].toSorted((a: string, b: string): number => a.localeCompare(b))

export default defineConfig({
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
