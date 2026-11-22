class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.415"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.415/podiom_v0.1.415_darwin_arm64.tar.gz"
      sha256 "eb10b518e541d2bb32686365f8ddcaa8d8ee1a2ad3a450f52d752c0d050f6f4e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.415/podiom_v0.1.415_darwin_amd64.tar.gz"
      sha256 "d4a70c6dfe3f643a3b5ee3cf546f6e516ca2f0a5e2db3c29ebd1545937b47e8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.415/podiom_v0.1.415_linux_arm64.tar.gz"
      sha256 "45e4457598e9303e242e37c7944c0f5315edce7df089d0588af978879a471bb4"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.415/podiom_v0.1.415_linux_amd64.tar.gz"
      sha256 "3cac75293e20fd4c12b8c517b752713451a276c094dc1fe9fbb52c616b6debab"
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
