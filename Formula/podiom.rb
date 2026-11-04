class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.397"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.397/podiom_v0.1.397_darwin_arm64.tar.gz"
      sha256 "2359894f5cd791b9cfa27f12295a7a8c4c1820aececb44765634e4b017d5efa4"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.397/podiom_v0.1.397_darwin_amd64.tar.gz"
      sha256 "3b950ad2c5c697bd3c924e048bb1e715a68954c99e256c82827c2e0d44325d43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.397/podiom_v0.1.397_linux_arm64.tar.gz"
      sha256 "92a109e12ef5ecf5631fa65bb2310302805d11b8f4f17b704e5d95f9b550ab40"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.397/podiom_v0.1.397_linux_amd64.tar.gz"
      sha256 "51074d4c2a85ac4b7eff40895a5bde81c35071d5592a4a0c669746796dcb6532"
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
