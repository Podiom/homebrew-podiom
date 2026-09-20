class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.336"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.336/podiom_v0.1.336_darwin_arm64.tar.gz"
      sha256 "3e1892d8fc6ec1ab30bd5d5aec39268c566998ade81bd931daea13dc97d0c243"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.336/podiom_v0.1.336_darwin_amd64.tar.gz"
      sha256 "d44bdb6ea876967b48dee63e995985b0c21f5be929f71d7a5cf31a010ea63295"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.336/podiom_v0.1.336_linux_arm64.tar.gz"
      sha256 "9a3743c3191118e395d47f04403216ac6fa49ade8b470cf23c27681b805b3519"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.336/podiom_v0.1.336_linux_amd64.tar.gz"
      sha256 "ff495f34d146bc98809ef0467820351cd7da444238ff2d8c1429d8ad4709e73f"
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
