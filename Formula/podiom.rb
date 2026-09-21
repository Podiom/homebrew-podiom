class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.343"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.343/podiom_v0.1.343_darwin_arm64.tar.gz"
      sha256 "396837d5d8348f2e17e7ae7a5289272d9ceea39cc43922cdc76dba00c5faa8e2"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.343/podiom_v0.1.343_darwin_amd64.tar.gz"
      sha256 "44d0dcdcddc2dea5c8e3130efd2a48f6ebfbcecdede1cb75df348141eefc6abd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.343/podiom_v0.1.343_linux_arm64.tar.gz"
      sha256 "eab5ec703a0ea8faf7bb522d6a98451a68ae1fafd8749a1b809e6b095f55ab77"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.343/podiom_v0.1.343_linux_amd64.tar.gz"
      sha256 "3c81c1e817182bf98c8f5627d005b0e6def5b2becc714fecb99c5addd67d0ed7"
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
