class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.182"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.182/podiom_v0.1.182_darwin_arm64.tar.gz"
      sha256 "f479e6eb2c18ae1943f7b2fccbd6c3f929241662d5c6430f3857689bf0a5ef1f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.182/podiom_v0.1.182_darwin_amd64.tar.gz"
      sha256 "c4452cbf835ddb7e08ba036767be428069eac408723bab3d3ee0b52c7f2719b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.182/podiom_v0.1.182_linux_arm64.tar.gz"
      sha256 "4b9cadd42f96cc9d9732be5a9857aa8e3e65f897dfcb08c0ff238ee255031361"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.182/podiom_v0.1.182_linux_amd64.tar.gz"
      sha256 "e65052d17e325cae4e3ea87cccbfce8466fdfb216002a4171fce9de903a836d3"
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
