class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.295"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.295/podiom_v0.1.295_darwin_arm64.tar.gz"
      sha256 "17584ad54e06b39bc5d36465af7b2c97d5d8ada8075b91061105f4c8addc0dcd"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.295/podiom_v0.1.295_darwin_amd64.tar.gz"
      sha256 "36e2ed60a47dec012b810c81142ffda4dd9736fd89d4136e74136ed25ba14668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.295/podiom_v0.1.295_linux_arm64.tar.gz"
      sha256 "bdc3589a120e25e33c8038ead2161e82c0f2a3fac5d018f6d0c10a15dacb0429"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.295/podiom_v0.1.295_linux_amd64.tar.gz"
      sha256 "614d48d6bbb3570994c90a4c24a0c4c84eeec4bf947e35bfec0b2f8822c43f26"
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
