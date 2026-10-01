class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.362"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.362/podiom_v0.1.362_darwin_arm64.tar.gz"
      sha256 "219662d1a19498e5a65a334b07c08f476c96a4cf572dc7714e4edcda700c6251"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.362/podiom_v0.1.362_darwin_amd64.tar.gz"
      sha256 "503622fafe0a0d7fdab89d0a3b1355f174b073a383782770a855cd59fe450d29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.362/podiom_v0.1.362_linux_arm64.tar.gz"
      sha256 "a142424137e1c903319d0118d391dd075667582e64b04798837d7b20be1124d0"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.362/podiom_v0.1.362_linux_amd64.tar.gz"
      sha256 "c5be91ab134a03d76c4e852250c2ea1997797d8a858a34a09d80fc63370eeae9"
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
