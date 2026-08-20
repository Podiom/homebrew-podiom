class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.216"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.216/podiom_v0.1.216_darwin_arm64.tar.gz"
      sha256 "9a41f36b3d2bb6ccf3320eaf04ed2b7c4a33a1db7ae12b564440d41d16e65161"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.216/podiom_v0.1.216_darwin_amd64.tar.gz"
      sha256 "7757b2ebb16b39cf8c33b9b4bd6ed66350d7d49cfc2279219389e07591b5f1bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.216/podiom_v0.1.216_linux_arm64.tar.gz"
      sha256 "9bc7155f5dcdce26d7002735bbd2ab53c0c5ba999801bc9a2022193c6c8c842b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.216/podiom_v0.1.216_linux_amd64.tar.gz"
      sha256 "1102026716ba77ad479d482211e13beff1a8d5dab14cebdcdccc065aa05283cb"
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
