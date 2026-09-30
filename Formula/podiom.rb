class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.359"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.359/podiom_v0.1.359_darwin_arm64.tar.gz"
      sha256 "ae71f24a71871fdc9e7c3152ba1849220eccd71979e8d44ce451b7996d578b98"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.359/podiom_v0.1.359_darwin_amd64.tar.gz"
      sha256 "6582b0edc94df634858dd5544b78f45205f8ecc01dd73c4ff918c262da7ef01f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.359/podiom_v0.1.359_linux_arm64.tar.gz"
      sha256 "3b91e708735b8cc0ea8b83d3a614e863849f5dbee50e62512ac3f932e005d7fd"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.359/podiom_v0.1.359_linux_amd64.tar.gz"
      sha256 "73353095eded84bcdced8bbc62424090f6d000da0e35421202ba5115b0d33d70"
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
