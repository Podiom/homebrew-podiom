class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.241"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.241/podiom_v0.1.241_darwin_arm64.tar.gz"
      sha256 "37459eae1cbd74f15730449d4bb0bd7a69eaae87d933551b094cc354a8126d84"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.241/podiom_v0.1.241_darwin_amd64.tar.gz"
      sha256 "5d88f8e82581a090ed2f9856344a83affd770811bce62e4c2f1186ec2f5e460c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.241/podiom_v0.1.241_linux_arm64.tar.gz"
      sha256 "8313fd9c78d0004e17010cc044b3806104eb8ecb7e40e9d92eda94df9759ae4c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.241/podiom_v0.1.241_linux_amd64.tar.gz"
      sha256 "3ab995c3ca52d6f51ea72070f6a13a3358c85c1817557be64d398dd89ae0daca"
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
