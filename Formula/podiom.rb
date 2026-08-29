class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.258"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.258/podiom_v0.1.258_darwin_arm64.tar.gz"
      sha256 "a8b89a848cfc795469bfc066f0f9d831ee9c9a2226d0a8beab010f0453e2a7fb"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.258/podiom_v0.1.258_darwin_amd64.tar.gz"
      sha256 "cf7dfae092699d68d7585647e98b84ba5509cde91f9979bbdb2cf40ef2c8a9ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.258/podiom_v0.1.258_linux_arm64.tar.gz"
      sha256 "569d465e1a91ec2c55944cb778a7717ea79a10cf152e58a2a617980e81aba63c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.258/podiom_v0.1.258_linux_amd64.tar.gz"
      sha256 "dd5a4c1b68a516cd6a37e227194b3d6dda9463555a1a4ae8d82c78ed92df5503"
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
