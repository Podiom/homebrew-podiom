class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.242"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.242/podiom_v0.1.242_darwin_arm64.tar.gz"
      sha256 "62f8c477f5eee6749cfa2418503dac3f6910020605b43758fed132da2035241e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.242/podiom_v0.1.242_darwin_amd64.tar.gz"
      sha256 "888f3cbd0d96ba5cdce48381894c7301afd5568f419a328bf01b6f08e5b74e63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.242/podiom_v0.1.242_linux_arm64.tar.gz"
      sha256 "bf1d3fd8c62032003da6777685475706a30e8efc7e4786c5b39195603d384dc3"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.242/podiom_v0.1.242_linux_amd64.tar.gz"
      sha256 "d4ae938cdf98b8cf949f62ddb99130d232adc8d8f07577265b187aebeac0c809"
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
