class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.235"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.235/podiom_v0.1.235_darwin_arm64.tar.gz"
      sha256 "f4122ada841a0c21a0270c4ebb21316680826f3fc1e9900c5157cfd56dc371dc"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.235/podiom_v0.1.235_darwin_amd64.tar.gz"
      sha256 "d6a6c446fb539f6630f3cdfd37dcc78d10218a980587cc2af52c55469167717e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.235/podiom_v0.1.235_linux_arm64.tar.gz"
      sha256 "6808ad9a724b989c61d0035ebd8aaf31b06b83759155ab726829e0141cc6adab"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.235/podiom_v0.1.235_linux_amd64.tar.gz"
      sha256 "26cb7fe4948e93ff46c20e887f6010c401fbf216760208bb594c80d6a9a2b5dc"
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
