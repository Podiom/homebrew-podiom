class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.236"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.236/podiom_v0.1.236_darwin_arm64.tar.gz"
      sha256 "5500f01a1637fa3b4224ee0694c5eebc6fda35c664747884320269dc13d978b8"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.236/podiom_v0.1.236_darwin_amd64.tar.gz"
      sha256 "2f4b0d66b053d382bffa34509c9ffd9c60ec32470932f741f793b0695cb2e919"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.236/podiom_v0.1.236_linux_arm64.tar.gz"
      sha256 "fcb6afb9819d9272d8a1c6cd2d777a31fab40729ebbf63e1f11c6373b043254e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.236/podiom_v0.1.236_linux_amd64.tar.gz"
      sha256 "9bea8b6bf1a0300f62b8042991071c4a29814d39d0987bc8c3a00ee66f94a50c"
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
