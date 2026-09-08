class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.291"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.291/podiom_v0.1.291_darwin_arm64.tar.gz"
      sha256 "11a3e299981997c5d4f1520b73f3ce8b83f0d8a895e9dd0c69d137c0b96f3b01"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.291/podiom_v0.1.291_darwin_amd64.tar.gz"
      sha256 "1bf2d7ded3540437b6f6920066aac73dfa015c8fe65339a949665ea77d954d48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.291/podiom_v0.1.291_linux_arm64.tar.gz"
      sha256 "687532d399c056fbe28d51347c5c923d45014eb7af5db8794d16d87b5e1f52c9"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.291/podiom_v0.1.291_linux_amd64.tar.gz"
      sha256 "e89131f059dde202ba7fe25bbe5a40fcfd5e1e35f6432fbe091d4581d9d9ed13"
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
