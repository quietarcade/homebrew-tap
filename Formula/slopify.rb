class Slopify < Formula
  desc "Rewrite any sentence in over-the-top AI corporate cadence"
  homepage "https://github.com/quietarcade/slopify"
  url "https://github.com/quietarcade/slopify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "085abc73fd8c20e2696a533d8ad3010c8663cffa59fdbef08eb350f5995c7e92"
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
