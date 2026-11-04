class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.395"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.395/podiom_v0.1.395_darwin_arm64.tar.gz"
      sha256 "2580601e2cbe815200ff704a728a00a1f3885373b97e2c7b0bf43dea6a124c9c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.395/podiom_v0.1.395_darwin_amd64.tar.gz"
      sha256 "c52f330881f32ed132ec9afd8da5472b04d199b40435325980ffe1f64610c467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.395/podiom_v0.1.395_linux_arm64.tar.gz"
      sha256 "a44284113c4213745b6fc58c22eda2f1df9f60596edb566045aadaf714c0dda8"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.395/podiom_v0.1.395_linux_amd64.tar.gz"
      sha256 "33207888f884997d09517419c00e4c08e0e0313a72aef58198c49c3ed54c9ea2"
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
