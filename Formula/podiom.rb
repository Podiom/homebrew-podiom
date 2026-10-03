class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.364"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.364/podiom_v0.1.364_darwin_arm64.tar.gz"
      sha256 "0caf83636d3585658486a1bfa7d5ca808dbfa31d391e94477d990bf92748f30d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.364/podiom_v0.1.364_darwin_amd64.tar.gz"
      sha256 "16435971ab082cf0670877f3ffc726bdbc94bf9b93874525851bb0e368db28fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.364/podiom_v0.1.364_linux_arm64.tar.gz"
      sha256 "2dd90119601b14630af191d488e2617f5d826e15aa273fa81e0b36b5a7d864b6"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.364/podiom_v0.1.364_linux_amd64.tar.gz"
      sha256 "3e5927e759b445b869d542ff80a8d972c9c63dda4f32fc25c7b21d832a2ea3fd"
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
