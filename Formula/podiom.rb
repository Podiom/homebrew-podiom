class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.409"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.409/podiom_v0.1.409_darwin_arm64.tar.gz"
      sha256 "c0e1c61323c298452334a8edb8907549e8b4d6fc44b568420e4d4b458b471008"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.409/podiom_v0.1.409_darwin_amd64.tar.gz"
      sha256 "79e0d770bdf1a35fa0b009bf7f87663f04ca6623b2e0255b411de71530f757b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.409/podiom_v0.1.409_linux_arm64.tar.gz"
      sha256 "8912c6e2854da5aa0acfe376cec11fb64b8259efe6956e61f321391e6795824f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.409/podiom_v0.1.409_linux_amd64.tar.gz"
      sha256 "d5fd021cc8eb455114e60c511494cdce23e1f69f32284ee614eefbcf1f8e0513"
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
