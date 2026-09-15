class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.318"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.318/podiom_v0.1.318_darwin_arm64.tar.gz"
      sha256 "aaba261c3cf9b929ce1303741f8eb55e13820cec960854fcd39f2927ff371641"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.318/podiom_v0.1.318_darwin_amd64.tar.gz"
      sha256 "4a0876bc09d31eb1ec2eca82a7f03c4ffe0ce3d26b4b039909c612f3d76e9087"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.318/podiom_v0.1.318_linux_arm64.tar.gz"
      sha256 "352199ca058d324b9e50733bb9b92fac85affb4be03093b8b60f5196ffa09531"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.318/podiom_v0.1.318_linux_amd64.tar.gz"
      sha256 "b55844ed1fa120a07597462e742caddf73504f9854552c700af7bcbcfef483e7"
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
