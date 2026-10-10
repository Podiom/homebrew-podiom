class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.372"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.372/podiom_v0.1.372_darwin_arm64.tar.gz"
      sha256 "2be1c01c32b9ef0a9ed93a0b41872bf6474be6653d0362109fd31a3e377057e7"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.372/podiom_v0.1.372_darwin_amd64.tar.gz"
      sha256 "04eac65932c0b70d3acd2256141e187a4ec59e189f416a0f1e0c633e8e349865"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.372/podiom_v0.1.372_linux_arm64.tar.gz"
      sha256 "9dde7d523d17bf2f5ba321e627cbe16aa6b6a728c4c52ddf4b4862a4a1e193f5"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.372/podiom_v0.1.372_linux_amd64.tar.gz"
      sha256 "307f8a5c17a5652f2a89ec55218d37a0b71829646c30719800bc00f6205a7f8f"
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
