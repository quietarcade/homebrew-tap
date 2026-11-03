class Slopify < Formula
  desc "Rewrite any sentence in over-the-top AI corporate cadence"
  homepage "https://github.com/quietarcade/slopify"
  url "https://github.com/quietarcade/slopify/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "580ea921104e90398cd34b735537f23af8023154e6c8716c0c758844a1e9d8b1"
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
