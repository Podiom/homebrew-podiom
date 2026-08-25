class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.237"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.237/podiom_v0.1.237_darwin_arm64.tar.gz"
      sha256 "7cf4b9d37f2f154dddbf8c1ea3a90c84675d1343752194821e7151de14903608"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.237/podiom_v0.1.237_darwin_amd64.tar.gz"
      sha256 "2fa353e0669cfdc8663f2c463f1feb0f56f0ad50c159561c7127f753b37ec6fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.237/podiom_v0.1.237_linux_arm64.tar.gz"
      sha256 "f8db48619298c989046fa2a0747dea3311a7daaef7efe24e8edfda1417281f0c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.237/podiom_v0.1.237_linux_amd64.tar.gz"
      sha256 "32e04aa338a682727ab547ec2359b6f7a2a5c1e6437a48c9d51b078a530115d1"
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
