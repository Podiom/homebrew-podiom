class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.287"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.287/podiom_v0.1.287_darwin_arm64.tar.gz"
      sha256 "1316aca989ec0f4b840c4cdb6a388bc61d6938a5605b9a8e0a6e66cacc9c934c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.287/podiom_v0.1.287_darwin_amd64.tar.gz"
      sha256 "7945b60fff36186e70acd5c90f8165011eef33f073bc53b988e975dbd4220adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.287/podiom_v0.1.287_linux_arm64.tar.gz"
      sha256 "32fb64335ac9fbabb8301987b153f39df426fbe950e89ea8baf1400b6c762dc7"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.287/podiom_v0.1.287_linux_amd64.tar.gz"
      sha256 "10e4dc44813fcd2899127497a575f78027ac5ad84f78de126df9dfea99e4247a"
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
