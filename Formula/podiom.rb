class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.338"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.338/podiom_v0.1.338_darwin_arm64.tar.gz"
      sha256 "a6c82109d9f115795e7cdf4db46f27ee0063d79fa1619614aeb03c9f0a3d349c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.338/podiom_v0.1.338_darwin_amd64.tar.gz"
      sha256 "1fe306a462d9367862fbea4fac29c4aa0f30fb3bd3e77f284c81acdfcba19fab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.338/podiom_v0.1.338_linux_arm64.tar.gz"
      sha256 "35b8e037f9ea2cfb26a6d889f4e256bcfc6f3e78834decaddb44af3e9dbed59d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.338/podiom_v0.1.338_linux_amd64.tar.gz"
      sha256 "6372eb02a3b6629c2da44a87c4f6756bbf3674848fd97309027b703a6239a3ea"
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
