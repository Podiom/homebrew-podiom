class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.342"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.342/podiom_v0.1.342_darwin_arm64.tar.gz"
      sha256 "6ddc2b0e0b328bff530761da65efd29a6805ce8c05ea3bfd252383f60bacbb03"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.342/podiom_v0.1.342_darwin_amd64.tar.gz"
      sha256 "70c0e7f073783058ccf2d2e4836f95b2d17b5e520e5b288773a416bb02f4354a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.342/podiom_v0.1.342_linux_arm64.tar.gz"
      sha256 "0dde8e8ec7abd574506dfcef12bdf354f96f572293e633ce2bf542cb2c1354b4"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.342/podiom_v0.1.342_linux_amd64.tar.gz"
      sha256 "29013a5d6385558968e5dc190c06b5427a0f2bb54f33a33830d0ab5d3f1ff752"
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
