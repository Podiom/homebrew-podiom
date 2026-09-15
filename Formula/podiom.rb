class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.314"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.314/podiom_v0.1.314_darwin_arm64.tar.gz"
      sha256 "27135b876094f5adcd9f8d4e699ed6a48484d23d5175a31f92054cf45d7c34c5"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.314/podiom_v0.1.314_darwin_amd64.tar.gz"
      sha256 "cc84fa4f4ce819e07fb97f208255155b0cb947b45bce3d20728a16f0eaa76d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.314/podiom_v0.1.314_linux_arm64.tar.gz"
      sha256 "df2d84339d69977fde1b68675a17c613e2e4514f935caa0b79d21d0887e452e9"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.314/podiom_v0.1.314_linux_amd64.tar.gz"
      sha256 "0a72bed4f344e8e35bee2fe7d3ce45e0a53105c42d6d24eeac4e9334e4eaa0c1"
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
