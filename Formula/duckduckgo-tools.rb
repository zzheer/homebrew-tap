class DuckduckgoTools < Formula
  desc "Standalone DuckDuckGo HTML search CLI and stdio MCP server"
  homepage "https://github.com/zzheer/duckduckgo-tools"
  url "https://github.com/zzheer/duckduckgo-tools/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "aef57a82591077c79dca217b86312821d2e1b92cb5638744744f5fa5ecd64009"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    ENV["CARGO_BUILD_JOBS"] = "2"
    system "cargo", "install", "--locked", *std_cargo_args
  end

  test do
    require "json"
    output = JSON.parse(shell_output("#{bin}/duckduckgo-tools capabilities --json"))
    assert_equal "search-cli/v1", output.fetch("contract")
    assert_equal "duckduckgo-tools", output.fetch("tool")
    assert_equal true, output.fetch("capabilities").fetch("search")
    assert_equal ["none"], output.fetch("auth_modes")
    assert_path_exists bin/"duckduckgo-tools-mcp"
  end
end
