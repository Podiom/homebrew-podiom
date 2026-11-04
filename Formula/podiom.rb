class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.403"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.403/podiom_v0.1.403_darwin_arm64.tar.gz"
      sha256 "58edae90dbd75736671a3f684c4dd05984ab3a3dba1da5964e2025e26a4e59bf"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.403/podiom_v0.1.403_darwin_amd64.tar.gz"
      sha256 "12a61b53572425f17075cfb80667dca2df40f7b1c58199c070597ddafeef2a11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.403/podiom_v0.1.403_linux_arm64.tar.gz"
      sha256 "991fbda337f018a82c84176abee95d2384cc040b6785f01a1e6f0197fdbff0ad"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.403/podiom_v0.1.403_linux_amd64.tar.gz"
      sha256 "1628a88763f6259d7423777612f3d3bdba5964eccdb4e931288b4dcedf121c92"
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
