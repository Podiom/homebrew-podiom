class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.417"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.417/podiom_v0.1.417_darwin_arm64.tar.gz"
      sha256 "b757a9397134fa69e4309fcf73c4572f2fe5585a7276b5f35d9a4f3aaaaf5faa"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.417/podiom_v0.1.417_darwin_amd64.tar.gz"
      sha256 "96b1742267af1d5e9f16bf5f2d8caa6db10cfc0e19a259664ecd2cd3308dab5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.417/podiom_v0.1.417_linux_arm64.tar.gz"
      sha256 "e16107870d4371bcc2c7b4e1f83756611db3f4edf6d201086ec343aaf02ca465"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.417/podiom_v0.1.417_linux_amd64.tar.gz"
      sha256 "93eb6884d33c0b6d2a29ff918d5f83745cab90c67662202b8f4a292f418f8575"
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
