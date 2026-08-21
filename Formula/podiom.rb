class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.219"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.219/podiom_v0.1.219_darwin_arm64.tar.gz"
      sha256 "2bd0cd5b446755796f1f010ae099ac41e88b2c1a4f44112041bb1128970940d1"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.219/podiom_v0.1.219_darwin_amd64.tar.gz"
      sha256 "e66cc70b5a57da0db17dd126d03727213134962de0acf02ee421cfc8feedda95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.219/podiom_v0.1.219_linux_arm64.tar.gz"
      sha256 "9444b67d96fd166b97dfdea41cca84cd10c0edbf1cc2bb5449c45424b5685631"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.219/podiom_v0.1.219_linux_amd64.tar.gz"
      sha256 "4eef01bd41a2258f43a216081d653457070e6ea794441808cad7dbd12896e86a"
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
