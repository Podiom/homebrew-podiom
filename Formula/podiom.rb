class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.325"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.325/podiom_v0.1.325_darwin_arm64.tar.gz"
      sha256 "4382a483e999d1a61f60a1d308f3c15933a096c322ec069309a846cc4de78c30"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.325/podiom_v0.1.325_darwin_amd64.tar.gz"
      sha256 "50121191d23da229f1b278dc868bd7cae157c39020ff8461b3bd69a2a75e0f04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.325/podiom_v0.1.325_linux_arm64.tar.gz"
      sha256 "1bb8007af78eadd3d06be99945129d1e2b5d730dc99f54018230c24b80ee7833"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.325/podiom_v0.1.325_linux_amd64.tar.gz"
      sha256 "90e561233e3d23b18971575c2b6c8e597d263d3db121d924c5608723df18e40b"
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
