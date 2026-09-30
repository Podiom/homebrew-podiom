class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.355"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.355/podiom_v0.1.355_darwin_arm64.tar.gz"
      sha256 "f4a1a362445547192c785dc76477d14878d92ccc09aec7f7a14707780fad3c4a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.355/podiom_v0.1.355_darwin_amd64.tar.gz"
      sha256 "c6e300c48304743e59fe32ba7a7a2ce5347882d2cc7d6ec2ef0d469e7a15c3a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.355/podiom_v0.1.355_linux_arm64.tar.gz"
      sha256 "16c95b940263f04e0173cdf9918d3adf4eb5032117b8ea9e16318c854895b488"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.355/podiom_v0.1.355_linux_amd64.tar.gz"
      sha256 "d35ae34d2c61cb27257b0aaaceffadea0ef32a834d1881c3a9064405ea6ab56a"
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
