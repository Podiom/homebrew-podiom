class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.279"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.279/podiom_v0.1.279_darwin_arm64.tar.gz"
      sha256 "6bd673e1f7831231bda448f691f30720963aaad04f29c5d6a8789cf3fc8e1b60"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.279/podiom_v0.1.279_darwin_amd64.tar.gz"
      sha256 "978b43bf6b40b7df91a1346bda81636a9523895251028a79998c56da2e94433c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.279/podiom_v0.1.279_linux_arm64.tar.gz"
      sha256 "31b215d97688f5833c9c3a98b48163a4264b50c193031297bf4cc92bba92780d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.279/podiom_v0.1.279_linux_amd64.tar.gz"
      sha256 "8ca071fb7f606a08363ff14f07550fa76108e1d8d4245231e80462d04a876706"
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
