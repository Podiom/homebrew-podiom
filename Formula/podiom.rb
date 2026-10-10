class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.375"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.375/podiom_v0.1.375_darwin_arm64.tar.gz"
      sha256 "31cf5e546cc04b45dd5d55c0c99e147b840afc6bcd37e0e575b1fc03d28db6f9"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.375/podiom_v0.1.375_darwin_amd64.tar.gz"
      sha256 "84a10cfa0ae1eb6071fb54cf5db6326a13dd97b9555f2746df87ebc0ac084913"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.375/podiom_v0.1.375_linux_arm64.tar.gz"
      sha256 "09d924ef6b3f5e96eb1b29e1703f96f06e595e547ad34b0b62197d229f6c2f6a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.375/podiom_v0.1.375_linux_amd64.tar.gz"
      sha256 "7b74cc735ad6fe385e0c2117c61cf9ffaf1aa9c786a9d7776f82931a900c85d9"
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
