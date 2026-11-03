class Slopify < Formula
  desc "Rewrite any sentence in over-the-top AI corporate cadence"
  homepage "https://github.com/quietarcade/slopify"
  url "https://github.com/quietarcade/slopify/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "06eeaa7c52f3db79392680dd173f1c6e8de18b808de18682373db2d17bcefcb3"
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
