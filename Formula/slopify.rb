class Slopify < Formula
  desc "Rewrite any sentence in over-the-top AI corporate cadence"
  homepage "https://github.com/quietarcade/slopify"
  url "https://github.com/quietarcade/slopify/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "4fd791fc06ff723b046d381573884591ced0dd01f38624e65b76c96fa5071ad1"
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
