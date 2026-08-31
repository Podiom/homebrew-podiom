class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.274"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.274/podiom_v0.1.274_darwin_arm64.tar.gz"
      sha256 "1a54cfc255f74194c5307d578828dd6b5fd5f96fb32a59b91b56cbbfcf13d7be"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.274/podiom_v0.1.274_darwin_amd64.tar.gz"
      sha256 "fc88c1a48ea5f95a6a7163977b54358c7ce9cbf72af6f9f41df5c191c9f6786e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.274/podiom_v0.1.274_linux_arm64.tar.gz"
      sha256 "45ba1690a5afbf1de33b6a251f48636fd427d81af4963f7552bfacbe9fa4967b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.274/podiom_v0.1.274_linux_amd64.tar.gz"
      sha256 "7282ed3d234c3df24667b69c178d577aa1deea6643e6841adea042cd57f6990d"
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
