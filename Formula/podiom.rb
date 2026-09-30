class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.356"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.356/podiom_v0.1.356_darwin_arm64.tar.gz"
      sha256 "09179aef89bc75f18629b94408e9a1a2397fe2bcbbd9ef358cd83db07ef483ba"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.356/podiom_v0.1.356_darwin_amd64.tar.gz"
      sha256 "791054511bf30e236d4c45ffa452bf4d4545975f9eca525c0296e1b24beb41a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.356/podiom_v0.1.356_linux_arm64.tar.gz"
      sha256 "3d29abb755bec092472853e1178a437550505edf4341e5f0de87b1100cb2a757"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.356/podiom_v0.1.356_linux_amd64.tar.gz"
      sha256 "ec66a7b2529b547d0d4941744dd2fc9c3f1310d2cfea5680d34a3e0e76952a97"
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
