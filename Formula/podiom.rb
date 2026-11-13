class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.412"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.412/podiom_v0.1.412_darwin_arm64.tar.gz"
      sha256 "27cf395c29c72618ecc9afbd332d2998c7701ba0cfe62c3c1befddf223596fbf"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.412/podiom_v0.1.412_darwin_amd64.tar.gz"
      sha256 "3210f93151342966dba613b30e9d317e45e071d7034f0cd30c63a4c75b0047d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.412/podiom_v0.1.412_linux_arm64.tar.gz"
      sha256 "87594bca61b8fcddeb0ea9b19e53310e11cebb4e4bc43fa610b4e4d78b0fb20b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.412/podiom_v0.1.412_linux_amd64.tar.gz"
      sha256 "cd0ae1275bcfe10b9220e5ca21a500196de0f0a617f413a3d3f3e0b179c3903f"
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
