class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.358"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.358/podiom_v0.1.358_darwin_arm64.tar.gz"
      sha256 "286bbb4e727645ed525913b48f1ecff482bacd8075930cabef91dfac8d782986"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.358/podiom_v0.1.358_darwin_amd64.tar.gz"
      sha256 "339cea43c3ee562d6d069f3fdf26f422efbc5e0ecc0f94b0faaafef887433df1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.358/podiom_v0.1.358_linux_arm64.tar.gz"
      sha256 "26ae2fdf1d7a3704126dcb2c6d08ed3bbfb61cd37e470a28b2a342af1c59920b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.358/podiom_v0.1.358_linux_amd64.tar.gz"
      sha256 "6506924c26980a296cbd51de986f5f333ecf0678e08d29bfc32f2548f8302260"
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
