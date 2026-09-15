class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.320"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.320/podiom_v0.1.320_darwin_arm64.tar.gz"
      sha256 "91be013fa16c971ad3357c503f60c5e2d8834ac4f6b6eed63e573f9d575ebfae"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.320/podiom_v0.1.320_darwin_amd64.tar.gz"
      sha256 "45145721cb4805763bcd0f8d490c0b79ef2062e56fc0a99da54a29204e72d713"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.320/podiom_v0.1.320_linux_arm64.tar.gz"
      sha256 "199ecd1c008b1327945dcca5b466f5cdedcbe6e13d96997feccd9b35dd7c2908"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.320/podiom_v0.1.320_linux_amd64.tar.gz"
      sha256 "4650e09e715fc6eacc8083ecdedbf5c4517db769dcae6edeba6ce6bd70eb4693"
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
