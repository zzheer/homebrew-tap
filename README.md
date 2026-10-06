# zzheer Homebrew tap preparation

Prepared formula: `Formula/duckduckgo-tools.rb`. Source builds locally with
Rust, two Cargo jobs, and `--locked`; both CLI and MCP binaries install.
The formula test checks capabilities offline and the MCP executable exists.

The public source archive is pinned to `v0.1.0` and its SHA256. Source and tap
are published; verify a real Homebrew install/test separately.

Install:

```sh
brew install zzheer/tap/duckduckgo-tools
brew test zzheer/tap/duckduckgo-tools
```

Use PRs after initial bootstrap. No GitHub Actions, hosted CI, uploaded build
outputs, caches, or binaries. No worktrees.

## MTK

`Formula/mtk.rb` builds the private CPU limiter and installs the command wrapper,
job registry, aliases, and helpers. Source archives are pinned by commit and
hashed from the exact published URL. MTK uses `duckduckgo-tools` from this tap.

```sh
brew install zzheer/tap/mtk
brew test zzheer/tap/mtk
```
