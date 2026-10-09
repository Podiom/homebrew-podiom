class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.369"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.369/podiom_v0.1.369_darwin_arm64.tar.gz"
      sha256 "0b2dcd6fee11e8578518b4d6b3480cf8cf86be60fda0b4a4f7124c87f44440eb"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.369/podiom_v0.1.369_darwin_amd64.tar.gz"
      sha256 "d7fb485826bb5e291bb6c10aed693cb2740ce2ba0fa68c6b0b85adf744e92273"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.369/podiom_v0.1.369_linux_arm64.tar.gz"
      sha256 "5cf91da0ccf64647499feea3f42fcca617feee331737d500bb50672c1ea95ea8"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.369/podiom_v0.1.369_linux_amd64.tar.gz"
      sha256 "9a46157efd3ea08c3786d939ff6b19c2ebe606844133328c12845f5292df8515"
    end
  end

  def install
    bin.install "podiom"
    bin.install "podiomd"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/podiom --version")
    assert_match "v#{version}", shell_output("#{bin}/podiomd --version")
  end
end
