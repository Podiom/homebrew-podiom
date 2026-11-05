class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.404"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.404/podiom_v0.1.404_darwin_arm64.tar.gz"
      sha256 "ca4e930b997db094faa7d936f237cf0262f5264bdad452d9c51a82802af2cc1e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.404/podiom_v0.1.404_darwin_amd64.tar.gz"
      sha256 "bb75a878399864097aedb3311927854a1a6257d20d3c1556663785946f41d3f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.404/podiom_v0.1.404_linux_arm64.tar.gz"
      sha256 "93129a3fb2a6a0439bf07806f24b846d4c9ea5ad1c4e26649a4dbdb1f4206469"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.404/podiom_v0.1.404_linux_amd64.tar.gz"
      sha256 "0e66016436c2b1a6e63ed2b8d8f0ff44fcc65189f94763a1c391f44628d2717f"
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
