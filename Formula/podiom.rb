class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.230"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.230/podiom_v0.1.230_darwin_arm64.tar.gz"
      sha256 "765e871fcb7b006a717409c0b16e35089718e2f37cb0d330330b0bdcdc26cff8"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.230/podiom_v0.1.230_darwin_amd64.tar.gz"
      sha256 "68a7feb70d87d65c096b2d879fe3ebe7be4494746254e1753a192524c00807e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.230/podiom_v0.1.230_linux_arm64.tar.gz"
      sha256 "f5b55060b3d60a6b2083b49f3e02c081c09a435c344c5bb5f357ebb982832ad1"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.230/podiom_v0.1.230_linux_amd64.tar.gz"
      sha256 "33cdeed4ccc2e9bfdd0be5a1b3cacb97af1f2a61d795c258ec7eebbc679c1917"
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
