class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.265"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.265/podiom_v0.1.265_darwin_arm64.tar.gz"
      sha256 "21599c94fc639c990d6df05f5d9fb9de006e5d0c4c4fc9b0ff72bcc9109b920f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.265/podiom_v0.1.265_darwin_amd64.tar.gz"
      sha256 "4193a0dd1db14326feeefe255c81664c13396949017e24d1746a9bd6b1738aef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.265/podiom_v0.1.265_linux_arm64.tar.gz"
      sha256 "5c0ea455061ee0a23bb537e6325e718e3952de8314572a10cfb810d25cec7836"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.265/podiom_v0.1.265_linux_amd64.tar.gz"
      sha256 "06a0f816853614563e79f56fe0a3dcd47f18fcf4d01034b67588c0c6b7088f5e"
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
