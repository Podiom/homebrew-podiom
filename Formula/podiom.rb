class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.243"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.243/podiom_v0.1.243_darwin_arm64.tar.gz"
      sha256 "87883a4cf234eac8b838f926746d864d4630a78efb53c0e87ef292e41c44f9f1"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.243/podiom_v0.1.243_darwin_amd64.tar.gz"
      sha256 "f6f529a2e508673342e865700f8b88083784113adb67f136cf9c8e4c08c3c96a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.243/podiom_v0.1.243_linux_arm64.tar.gz"
      sha256 "04d44c1e5b5e883fa23f6a6a55dbab176fb5b49d2e63aa1919e32e1ea165fbfb"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.243/podiom_v0.1.243_linux_amd64.tar.gz"
      sha256 "962643e888e996340d66530e00efab80cd369ff67f6f666d001713920a8896e6"
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
