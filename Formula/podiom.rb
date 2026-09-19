class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.332"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.332/podiom_v0.1.332_darwin_arm64.tar.gz"
      sha256 "1201c52f6c772d7f49a82945d9479d90a5248177740bad73091a8734e64a3bbf"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.332/podiom_v0.1.332_darwin_amd64.tar.gz"
      sha256 "ba8bc5db99f0323ea0e2871f90cb1bdef243f9be9531b1266426c59d649a2d26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.332/podiom_v0.1.332_linux_arm64.tar.gz"
      sha256 "c72a13f368ecf07f5102a0a0fd8b008a7a81a967525d510b8faa1da8cab74f8f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.332/podiom_v0.1.332_linux_amd64.tar.gz"
      sha256 "97a10d8b26af72cfc496df0966e200deff3570f092da46ff8a4597b191a64f80"
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
