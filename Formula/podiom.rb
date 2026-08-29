class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.259"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.259/podiom_v0.1.259_darwin_arm64.tar.gz"
      sha256 "6211e4d2fbdd91b8c6f42dd190b253e9bcf516c43f98e129ee30729287926a0e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.259/podiom_v0.1.259_darwin_amd64.tar.gz"
      sha256 "8f4b0d8cc6f3a36961d3c6c041adccf2dc20368d7ce63a3f71c47f30a3bc8015"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.259/podiom_v0.1.259_linux_arm64.tar.gz"
      sha256 "77dfcf3306aba1db5b989b429fc068e4a33455a778d3a1f0e949f0ce3f9b15d4"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.259/podiom_v0.1.259_linux_amd64.tar.gz"
      sha256 "585eecddad8d59350b4af21fbf04810f6327b79a4e8d80a1e1a3bbd457347e7c"
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
