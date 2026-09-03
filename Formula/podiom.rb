class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.281"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.281/podiom_v0.1.281_darwin_arm64.tar.gz"
      sha256 "906e1238cc2c9f089f879a41e7ecb3043b07f93148c181687e74460d6221568e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.281/podiom_v0.1.281_darwin_amd64.tar.gz"
      sha256 "8d6870fa1ad5bd75242e82ae622c17ebb5ff52741f9cf787aa43d1c5e41bd298"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.281/podiom_v0.1.281_linux_arm64.tar.gz"
      sha256 "fad235dd35273f9a025d628ab43b8ee82cbda4fa49e01351488e21567543222a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.281/podiom_v0.1.281_linux_amd64.tar.gz"
      sha256 "977bb37e8660f0b52a9c78c04c154da801c98d92738287e7e78c9a78cffa06fd"
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
