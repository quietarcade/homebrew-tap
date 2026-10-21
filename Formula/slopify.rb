class Slopify < Formula
  desc "Rewrite any sentence in over-the-top AI corporate cadence"
  homepage "https://github.com/quietarcade/slopify"
  url "https://github.com/quietarcade/slopify/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "781868fa4546fccf991d3e7d4d0ba182e58d3155d4872ed0d4b6f6fc413b547b"
  license "MIT"

  def install
    bin.install "slopify"
  end

  def caveats
    "slopify needs Claude Code (the `claude` CLI), logged in: https://claude.com/claude-code"
  end

  test do
    assert_match "usage", shell_output("#{bin}/slopify 2>&1 </dev/null", 1)
  end
end
