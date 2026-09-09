class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.294"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.294/podiom_v0.1.294_darwin_arm64.tar.gz"
      sha256 "23543eb61b235802bf0a0674ef7c6135832723dc96e71f43dd9ad6bdcddb490e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.294/podiom_v0.1.294_darwin_amd64.tar.gz"
      sha256 "7dbee1b648dd6e3c0833927182c8a8d838277477cc7b51aa6b543ecddd02f477"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.294/podiom_v0.1.294_linux_arm64.tar.gz"
      sha256 "4a223b7892b97b5ce9080ecc4ec9bea928189b34863e0544fd8b04d949cdaeec"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.294/podiom_v0.1.294_linux_amd64.tar.gz"
      sha256 "3deb63beee146f4389625f401d9e3b562ce5851d44fe77539214fb4dacc076fa"
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
