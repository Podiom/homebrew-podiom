class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.315"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.315/podiom_v0.1.315_darwin_arm64.tar.gz"
      sha256 "17031f1897d312b462cbb29c91ab2ae2dff2bfac61804ab041dd88d64d59a040"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.315/podiom_v0.1.315_darwin_amd64.tar.gz"
      sha256 "e84cff7a52748df0e79a670f794474598fc2816bfe0bf01f9a06b19ff339f267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.315/podiom_v0.1.315_linux_arm64.tar.gz"
      sha256 "28a01937681fe1e14f0878177f257c56578ec7e10cf68fa8c5e44a6640670a13"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.315/podiom_v0.1.315_linux_amd64.tar.gz"
      sha256 "117c7fe38aef55f1249aa30bf36b3a7b699d261de5d813e7b041d73763e781a9"
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
