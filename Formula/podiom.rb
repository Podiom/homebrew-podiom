class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.380"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.380/podiom_v0.1.380_darwin_arm64.tar.gz"
      sha256 "8fa8b0bc76adab65de04acf1e9837a58a46d6e974ed9b48d100e5687621e766a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.380/podiom_v0.1.380_darwin_amd64.tar.gz"
      sha256 "dac2b645e5af928d280a47de880902d6ea15fe7b718a4f73ca24453fc20425d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.380/podiom_v0.1.380_linux_arm64.tar.gz"
      sha256 "63dab99c4f265ac28283e0a3650c2f0a2e92fcfdb3ec33d32dd054d27393ad28"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.380/podiom_v0.1.380_linux_amd64.tar.gz"
      sha256 "4b131e5a4846f24ee871ed2b375ee68613243b2eb4e0ec4bee6a8c079ac54717"
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
