class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.239"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.239/podiom_v0.1.239_darwin_arm64.tar.gz"
      sha256 "6ab51269968f6005363cd76a3e05fd9c79b14a309828974af329910eceb6e05e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.239/podiom_v0.1.239_darwin_amd64.tar.gz"
      sha256 "dffa20153a9f1bcd026d9d12cca9d52c02fe9e088b0d5cbc6b03446603ee1002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.239/podiom_v0.1.239_linux_arm64.tar.gz"
      sha256 "c36505de2b595c8fbf4514946cbbab4a41008dd46e9ff29fb59e77a5e1cdbfbb"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.239/podiom_v0.1.239_linux_amd64.tar.gz"
      sha256 "91aa075893d08c927635f1c5d084220bdf44964d300fed8d14512b6a07903eea"
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
