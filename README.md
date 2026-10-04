# zzheer Homebrew tap preparation

Prepared formula: `Formula/duckduckgo-tools.rb`. Source builds locally with
Rust, two Cargo jobs, and `--locked`; both CLI and MCP binaries install.
The formula test checks capabilities offline and the MCP executable exists.

The source URL is pinned to the locally verified bootstrap commit. Neither
source nor tap is published yet; remote installation is blocked on authorized
GitHub access for personal account `zzheer`. Do not advertise installation as
available before source/tap remote readback and a real Homebrew install/test.

Once published:

```sh
brew install zzheer/tap/duckduckgo-tools
brew test zzheer/tap/duckduckgo-tools
```

Use PRs after initial bootstrap. No GitHub Actions, hosted CI, uploaded build
outputs, caches, or binaries. No worktrees.
