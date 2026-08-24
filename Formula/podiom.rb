class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.234"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.234/podiom_v0.1.234_darwin_arm64.tar.gz"
      sha256 "2713e3835291f66aa58cc85be9bf778d2544bfb3820e9521c6b667eb5ef482f5"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.234/podiom_v0.1.234_darwin_amd64.tar.gz"
      sha256 "3b020bd30f89839cd725f986b82ac5fdcf6b93d6b22a9e40fcd0f71c9f067557"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.234/podiom_v0.1.234_linux_arm64.tar.gz"
      sha256 "8804906f6a1e0fc2323b7187ea9fb6f1b41d9a706c346a2520cc2814c3186f07"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.234/podiom_v0.1.234_linux_amd64.tar.gz"
      sha256 "a936aab87867b3a4757262f75fe35b9c366a74bc92c749dbb809428ee458c18e"
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
