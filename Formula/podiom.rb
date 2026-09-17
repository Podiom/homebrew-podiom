class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.321"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.321/podiom_v0.1.321_darwin_arm64.tar.gz"
      sha256 "a52f2f6efc2e82b92c97069be10fc9797da64e74d9916e4411977eadab1ae312"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.321/podiom_v0.1.321_darwin_amd64.tar.gz"
      sha256 "8a48e694e123ff6d9bb454c44b6ffc548db6a1237e3e7c02ccd6da87f1af7dae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.321/podiom_v0.1.321_linux_arm64.tar.gz"
      sha256 "84daeed2e9c0096580848d945371ac660e3728f12769299f6f322eb78e4b9b5e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.321/podiom_v0.1.321_linux_amd64.tar.gz"
      sha256 "459524a16e59f28c417384acb795049eb952b5c278ad8b68b554d07be261c628"
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
