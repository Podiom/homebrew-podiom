class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.384"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.384/podiom_v0.1.384_darwin_arm64.tar.gz"
      sha256 "39dcd183664f12a0bd877f29cf0949cd94a5427ee73eedf4841399ad5be2c9fc"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.384/podiom_v0.1.384_darwin_amd64.tar.gz"
      sha256 "d20d1481b7751328b396b61ab46e18f28647ce31a14f10cd405cea2f47072d01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.384/podiom_v0.1.384_linux_arm64.tar.gz"
      sha256 "df804f52c94cc03fee681c7859fd86ff6af6aca504cd8835a1650f461c43677e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.384/podiom_v0.1.384_linux_amd64.tar.gz"
      sha256 "d9558b3d534e37516ee4f8316bde878ef9ec217bc8dde61f75f617b469d23abd"
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
