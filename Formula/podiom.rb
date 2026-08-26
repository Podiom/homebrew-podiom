class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.240"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.240/podiom_v0.1.240_darwin_arm64.tar.gz"
      sha256 "bd64879ca44f99f8237348724705a484807f8e2741ea5c8a2d4229f81373d42c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.240/podiom_v0.1.240_darwin_amd64.tar.gz"
      sha256 "990009bdfd43a938cfe94a834dbfd4642914ca2d70ca7498f1ec728401ab9b0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.240/podiom_v0.1.240_linux_arm64.tar.gz"
      sha256 "a66ec42672d96dc9922e22e11556389ac5e74f03014779794bb9bf79f539090e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.240/podiom_v0.1.240_linux_amd64.tar.gz"
      sha256 "9e05339b37bb539804685571c485c9b76be12f61a575a0e27776bbc996390270"
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
