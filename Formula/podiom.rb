class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.349"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.349/podiom_v0.1.349_darwin_arm64.tar.gz"
      sha256 "ca76aad1b8fde493192a024e2b0adbdaa9ccfb68448d6e5b75386a626a42a826"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.349/podiom_v0.1.349_darwin_amd64.tar.gz"
      sha256 "f08bc5db7d33b9a180cef3f6fa209b5618796a3649ca207dcf839b3504297115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.349/podiom_v0.1.349_linux_arm64.tar.gz"
      sha256 "7418e289ed0612745848bcee1bcffa9fd0887976b75b62b7a143ee38cab86773"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.349/podiom_v0.1.349_linux_amd64.tar.gz"
      sha256 "34970795e51193b3103ce84971dc3c03459d57cd750c2be27b715a04d933c6e3"
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
