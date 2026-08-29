class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.261"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.261/podiom_v0.1.261_darwin_arm64.tar.gz"
      sha256 "21839de3233cf9d8a73c0be54ebc281f4095bd6de3b36d9f7686cefee2a0ffe0"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.261/podiom_v0.1.261_darwin_amd64.tar.gz"
      sha256 "be27de4dabfbf53ad30408db2e089231785e63e441871b561e83b502c6fd0b9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.261/podiom_v0.1.261_linux_arm64.tar.gz"
      sha256 "5cb97b2ebf2842d65aec67e2b312ce2a5f7a8e2816f3c773fc1f0979b1b91561"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.261/podiom_v0.1.261_linux_amd64.tar.gz"
      sha256 "009ac23310e04a7ab56467ab5504c4c5280456da6cc3462d298d67e1c7c18217"
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
