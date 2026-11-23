class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.419"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.419/podiom_v0.1.419_darwin_arm64.tar.gz"
      sha256 "03f7e2e12adb61cd27436600dcc969a28d6d77293d878918fa36c439016f955c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.419/podiom_v0.1.419_darwin_amd64.tar.gz"
      sha256 "99811dbe382dada49247b108db0054d282ed8a0f2a3473fdcdc6ecb5898ba12a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.419/podiom_v0.1.419_linux_arm64.tar.gz"
      sha256 "b1ba510963897bd2c3fb981d13e43fba5685b3a0a092ea7293afb85e48a92b5e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.419/podiom_v0.1.419_linux_amd64.tar.gz"
      sha256 "d4c962d38a70ab83a9c830fe7efd5cacadbcd69b4ef5ceb876d7ae49fb827ac1"
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
