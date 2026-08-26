class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.250"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.250/podiom_v0.1.250_darwin_arm64.tar.gz"
      sha256 "73bf059263af4dfec287045d88f070242699cad4f88a4f9ce5b9374a5f0ca8ff"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.250/podiom_v0.1.250_darwin_amd64.tar.gz"
      sha256 "98aba3bda163f1916b98d937085b2cf33e2bb3860ed04c7e762c586f47b6cc09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.250/podiom_v0.1.250_linux_arm64.tar.gz"
      sha256 "f213e51bb3ff8b56492f790bf09450a7b4bf44d8c215e5e99021b3b9f721b165"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.250/podiom_v0.1.250_linux_amd64.tar.gz"
      sha256 "55e2d7fbf4db5b87197618861a8149680c154a330a39d2cdca5bc97165da1d96"
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
