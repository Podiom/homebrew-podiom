class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.273"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.273/podiom_v0.1.273_darwin_arm64.tar.gz"
      sha256 "ab2195fba636112316134d4e5ad77ee12538e9a5bc402f39ef48b9a9a95a347a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.273/podiom_v0.1.273_darwin_amd64.tar.gz"
      sha256 "d65fa974a621c381c8da64bc3b1889b94b3b1075e5a3587fd4a66aab9a15cbcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.273/podiom_v0.1.273_linux_arm64.tar.gz"
      sha256 "ed5e31767f3cb8074dc5ac70f01eaa06be5683d9183bcf5dce7253aa2b223abd"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.273/podiom_v0.1.273_linux_amd64.tar.gz"
      sha256 "6da301e177113f7250d40b802759049af29577a45308b223f32c1a1afd9e54e0"
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
