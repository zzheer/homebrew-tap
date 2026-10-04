class DuckduckgoTools < Formula
  desc "Standalone DuckDuckGo HTML search CLI and stdio MCP server"
  homepage "https://github.com/zzheer/duckduckgo-tools"
  url "https://github.com/zzheer/duckduckgo-tools.git",
      revision: "034829b4e431182b461894cbef64df84d2e74b32"
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
