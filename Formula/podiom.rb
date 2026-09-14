class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.308"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.308/podiom_v0.1.308_darwin_arm64.tar.gz"
      sha256 "165716e57df05d2036a57ddb6a52678bd3f527772a0ef4e42180315a8b69fd06"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.308/podiom_v0.1.308_darwin_amd64.tar.gz"
      sha256 "5ed60f31cf69fbbf85fb83ada2250f64259a4d828a55f3c77df848ff34be476f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.308/podiom_v0.1.308_linux_arm64.tar.gz"
      sha256 "db191e1593fcc1930a284f3f92ae3464e84982670713864f3f1c4e39f26ce885"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.308/podiom_v0.1.308_linux_amd64.tar.gz"
      sha256 "ff907d66995780b9490149e3c9b7d3ac291cca7a4c93886e4a223ca0c10d080b"
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
