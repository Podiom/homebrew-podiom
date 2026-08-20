class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.217"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.217/podiom_v0.1.217_darwin_arm64.tar.gz"
      sha256 "afeb8047dbcaa3a2efea9c0ae1c0e73f1315bbfcaea78a6252e6757a74f0c975"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.217/podiom_v0.1.217_darwin_amd64.tar.gz"
      sha256 "fe341afeec68c1234a488bc2271898899262e761d30fead720d0e466cefff593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.217/podiom_v0.1.217_linux_arm64.tar.gz"
      sha256 "fb3e34ebef9e3c3c68a9646580da91e342da766978be601f0d8fccfed77c0c63"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.217/podiom_v0.1.217_linux_amd64.tar.gz"
      sha256 "71fa892c12a9f69fa3d5149ffb3e39faec7e608ec4122fbac6707c9a353b2e7c"
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
