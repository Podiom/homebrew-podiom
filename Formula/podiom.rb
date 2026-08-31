class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.269"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.269/podiom_v0.1.269_darwin_arm64.tar.gz"
      sha256 "7264703c7104dde471db6405ef43ffe766a2b1be93f96d3517b4651cbfd12c06"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.269/podiom_v0.1.269_darwin_amd64.tar.gz"
      sha256 "a730e336209e21fb451d9de82989517fd94796087a5cac7414b95159e7f597d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.269/podiom_v0.1.269_linux_arm64.tar.gz"
      sha256 "75e138957cf6f6086f2efef8c35faec91fc67c5fd30d7a67ab7d80bcbc677b00"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.269/podiom_v0.1.269_linux_amd64.tar.gz"
      sha256 "0d11a83eb4f5afc423dbc393b199743a78ba04225476ff9b6f6ced2d924aa4cc"
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
