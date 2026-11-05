class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.408"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.408/podiom_v0.1.408_darwin_arm64.tar.gz"
      sha256 "637147601a3f7a3cb406ed4b0ade916f5b15c2c7e69f25a4e8809937a195d29c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.408/podiom_v0.1.408_darwin_amd64.tar.gz"
      sha256 "e299ae05c50b3a7fa1b5fac23a19d22aad5bf5da705c5c653db030fc3bd9d3bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.408/podiom_v0.1.408_linux_arm64.tar.gz"
      sha256 "b398261ac2c4f666aa1c0b8b785d2f57807dddcec3cb2e9650c677931341ee8f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.408/podiom_v0.1.408_linux_amd64.tar.gz"
      sha256 "6ec855ebd03f467ba5dac4f30c6464a81ef53e16c2610f3d8c61efbf4d90c545"
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
