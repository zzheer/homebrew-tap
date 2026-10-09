# Homebrew tap review contract

- Review formula changes against the referenced immutable source revision and archive checksum. Verify version, dependencies, installed private helpers, licensing, and formula tests.
- For MTK, zx is required and runs with its own runtime; Bun is a separate tool. Preserve command forwarding, exit codes, private hook packaging, and compatibility handlers.
- Require validation and review results for the latest pull-request head. Repository-controlled automation and artifacts belong on Magnet; no GitHub-hosted runner fallback.
- Report confirmed defects with source locations. Do not alter credentials, provider settings, or formulas as part of a review request.
