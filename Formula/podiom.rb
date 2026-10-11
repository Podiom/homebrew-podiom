class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.376"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.376/podiom_v0.1.376_darwin_arm64.tar.gz"
      sha256 "e6528de60a9a9ee9ea934d69deb19fdf8d5b626e2c7fb280365261d730060135"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.376/podiom_v0.1.376_darwin_amd64.tar.gz"
      sha256 "60f4a5912f334bc6dfb6982f4625c71c92e6f3d3acfb3350454bc125f0c551e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.376/podiom_v0.1.376_linux_arm64.tar.gz"
      sha256 "9fecd25a4ee598223eeab8124fdb627de6e822f547b4f95dec0f565e9fb76bc1"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.376/podiom_v0.1.376_linux_amd64.tar.gz"
      sha256 "49538ccf43989c12ff9c48c754d23cd4ac22b20db0854d1a5af7e5c6decc163c"
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
