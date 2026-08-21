class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.223"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.223/podiom_v0.1.223_darwin_arm64.tar.gz"
      sha256 "5074a1177b7054724aa23d5c4b52ef87be79e5a1eecc499351f32d71238c63d8"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.223/podiom_v0.1.223_darwin_amd64.tar.gz"
      sha256 "3da5e0b31e5bd0402c9170de265ffb2b7ad80b57fe185bc9ac3ffc13bbcd2bcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.223/podiom_v0.1.223_linux_arm64.tar.gz"
      sha256 "1aecde5c4ebe1f46ddf8e8733b7a2a33ce83060dad271e9d46f3ff209a55753e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.223/podiom_v0.1.223_linux_amd64.tar.gz"
      sha256 "9ae2b7c80e0eba5ce85ee8a374528dc4b6f7eff6b3a02a266b02e2884ebd561c"
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
