class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.357"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.357/podiom_v0.1.357_darwin_arm64.tar.gz"
      sha256 "bc36e28c4df12e85aefcedf1bfcb942fed600f2fb14025827c7db815f095da22"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.357/podiom_v0.1.357_darwin_amd64.tar.gz"
      sha256 "32b1cd469042a6cbe6cefaca25228c14162d643e948db50e641366e169c31d06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.357/podiom_v0.1.357_linux_arm64.tar.gz"
      sha256 "bf3e7bf79ba4ea605fa4aef5c8e3ce353e013de715f8a4149f80bafb5698bb14"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.357/podiom_v0.1.357_linux_amd64.tar.gz"
      sha256 "93019e504c84783a629da6db323aa04274f16bfe5b8b66d0be7e4f63361b6d31"
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
