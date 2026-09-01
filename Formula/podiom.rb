class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.275"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.275/podiom_v0.1.275_darwin_arm64.tar.gz"
      sha256 "976f3a7b022fe3ae4cda31aa569c41ff2790c7330cb90c50cd72c3f911a29d1a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.275/podiom_v0.1.275_darwin_amd64.tar.gz"
      sha256 "51d9f7adc3a2e6953efa43fe237f8aaee127b986f5077d49c69dccf5f6380656"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.275/podiom_v0.1.275_linux_arm64.tar.gz"
      sha256 "67cc995acd0b4f23deaed7af1c956fd3c6b6413c757d09416c7f59fc92ecb3e6"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.275/podiom_v0.1.275_linux_amd64.tar.gz"
      sha256 "00a1ba58395c8e3c4a65cdfb4bc09474dd2aa16dc071179800b91cc4b50a7613"
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
