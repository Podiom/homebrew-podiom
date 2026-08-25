class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.238"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.238/podiom_v0.1.238_darwin_arm64.tar.gz"
      sha256 "ba7eb132513eabacc37ae28fef6f9ba9ce8f4e148c840ae35b3d7ff33a6658fa"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.238/podiom_v0.1.238_darwin_amd64.tar.gz"
      sha256 "81eadd345623a93a7e409cb9f965ff2fdd6f044b5d91e0a6978b09ee73564fe4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.238/podiom_v0.1.238_linux_arm64.tar.gz"
      sha256 "8ac41c67f4c1a2ff725a834ed5faa887a2050b3e98e60f02c9c985160f6ee130"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.238/podiom_v0.1.238_linux_amd64.tar.gz"
      sha256 "2c91f9bf5aa24a2874232aa75ec54e08970fd735788c518b06c501ba3b0ebd19"
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
