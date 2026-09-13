class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.298"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.298/podiom_v0.1.298_darwin_arm64.tar.gz"
      sha256 "f1cef2f98b26a6651488923d2a4fc97754dc2e4433d166b5f5d20fdeef4ef03a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.298/podiom_v0.1.298_darwin_amd64.tar.gz"
      sha256 "a690a0aa6915dcfccc6ff73e247e5e280e4b67d478d5f55c7f30bee79db9b096"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.298/podiom_v0.1.298_linux_arm64.tar.gz"
      sha256 "c52c8845ee572f834cb7ebe7eda9c5f7e4ee91a0cfb28b18bf92ad25ced366f0"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.298/podiom_v0.1.298_linux_amd64.tar.gz"
      sha256 "aa6140fbbc46bb1446ffd4b0906438df22d384332037e178b1605b2489ded965"
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
