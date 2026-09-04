class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.289"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.289/podiom_v0.1.289_darwin_arm64.tar.gz"
      sha256 "0f78790103e29066dafaf40d77f962598bf52b0b065ae013d248095f19d43a3d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.289/podiom_v0.1.289_darwin_amd64.tar.gz"
      sha256 "d558bb8885f8cfa86e50530c5de518d88fdc2fbb684170c3ba5813715428d6e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.289/podiom_v0.1.289_linux_arm64.tar.gz"
      sha256 "5a50e3a181768d8c861e17e00d301d39f5760953472657b73d17981d2673f485"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.289/podiom_v0.1.289_linux_amd64.tar.gz"
      sha256 "d27d9ef388a11e3f89345137c97a6f3e3bb980222c579761bfa8bdba8868c0a2"
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
