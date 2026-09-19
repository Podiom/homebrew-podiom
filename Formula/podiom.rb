class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.333"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.333/podiom_v0.1.333_darwin_arm64.tar.gz"
      sha256 "9a86f0663c516b21270ba4e680bcbb7c5fbcbc9d8b02c7057fa943c0975a1616"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.333/podiom_v0.1.333_darwin_amd64.tar.gz"
      sha256 "d02d5b84c6031da66ab4353b459bee1b9872736725ec5db50f1e4d6449b22e34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.333/podiom_v0.1.333_linux_arm64.tar.gz"
      sha256 "d0e5811359be5708bdc004c85e8d2a91cf8fcde0406bcf56909ba45e72d81d31"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.333/podiom_v0.1.333_linux_amd64.tar.gz"
      sha256 "8d89f8724b55167120f7708732b4ddedb4777316bd573f922d434015a34d1192"
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
