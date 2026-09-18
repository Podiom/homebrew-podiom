class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.330"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.330/podiom_v0.1.330_darwin_arm64.tar.gz"
      sha256 "88ee898b7475097c49c1e4b5681ab26f7a9157713aef1895190346b79cff4d2f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.330/podiom_v0.1.330_darwin_amd64.tar.gz"
      sha256 "18da20ffbb9d460affd19af9e3831aab59e7d4e551857d2506ed678fb665f660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.330/podiom_v0.1.330_linux_arm64.tar.gz"
      sha256 "9e6d74d6ce744deb74b93462b557b395cdb649f55fa846d6dcef0e2518bc873c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.330/podiom_v0.1.330_linux_amd64.tar.gz"
      sha256 "17b3c644fd8014ad23f9fd0f24cd130d3a7674f6da7474ffe9c937bb0269fc39"
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
