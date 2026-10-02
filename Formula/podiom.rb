class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.363"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.363/podiom_v0.1.363_darwin_arm64.tar.gz"
      sha256 "8566b71090e1a3683fdc278f4bb4f65eaae15e0385145b5f834d7bc053a99a30"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.363/podiom_v0.1.363_darwin_amd64.tar.gz"
      sha256 "a6132dbf6df499aa20b72bbc65a6aaa4754b43fb3b0460200e1ea92a6e63e62a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.363/podiom_v0.1.363_linux_arm64.tar.gz"
      sha256 "471c8e2d9b38bb67413ac084f934c0fa4b1f66c523f2a66d57e9941d2160125d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.363/podiom_v0.1.363_linux_amd64.tar.gz"
      sha256 "de474d24be954ef988764ce2f5603d79118dcd4f04aa356824035e3e8d7fc71b"
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
